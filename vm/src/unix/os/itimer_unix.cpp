/* Sun-$Revision: 30.19 $ */

/* Copyright 1992-2012 AUTHORS.
   See the LICENSE file for license information. */

# pragma implementation "itimer_unix.hh"
# include "_itimer_unix.cpp.incl"

# include <pthread.h>
# if TARGET_OS_VERSION == MACOSX_VERSION
#   include <mach/mach.h>
#   include <mach/mach_time.h>
#   include <mach/thread_policy.h>
#   include <time.h>
# endif

// --- timer signals must be processed on the VM thread ---------------------
// setitimer is process-directed: the kernel delivers SIGALRM/SIGVTALRM to an
// arbitrary thread that isn't blocking the signal.  When the VM is hosted by a
// GUI process (e.g. SpatialSelf on visionOS), that thread is often *not* the
// thread running Self, and IntervalTimerTick would then capture an unrelated
// thread's context as a preemptible Self process -- corrupting/jamming the
// host.  IntervalTimer::enable() records the arming thread as the VM thread,
// and IntervalTimerTick redirects any stray tick to it via pthread_kill
// (async-signal-safe).  This replaces the old "-t" workaround
// (IntervalTimer::dont_use_any_timer), which disabled preemption entirely.
pthread_t        self_vm_timer_thread;
volatile bool    self_vm_timer_thread_known = false;
volatile int32   itt_vm_ticks    = 0;  // ticks handled on the VM thread
volatile int32   itt_nonvm_ticks = 0;  // ticks redirected from another thread
# if TARGET_OS_VERSION == MACOSX_VERSION
mach_port_t      self_vm_mach_thread = MACH_PORT_NULL;  // VM thread's Mach port (identity check)
# endif

extern "C" { void IntervalTimerTick(int sig, self_code_info_t *info, self_sig_context_t *scp); }




class TimerEntry: public AbstractTimerEntry {
 private:
  int32 divisor;
  int32 count;
  
 public:
 
  void initialize(doFn sp, doFn ap, int32 factor) {
    AbstractTimerEntry::initialize(sp, ap);
    factor   *= IntervalTimer::oversample_rate; // for profiler debugging
    divisor   = factor;
    count     = 0;
  }
  
  void do_procs_if_needed() {
    if ( is_ready_to_do_sync_fn || is_doing_sync_fn )
      return; // avoid races
      
    if (++count >= divisor) {
      count = 0;
      if (async_fn != (doFn)-1)  async_fn();
      if ( sync_fn != (doFn)-1)  is_ready_to_do_sync_fn = true;
    }
  }
};


#if TARGET_OS_VERSION != SOLARIS_VERSION && TARGET_OS_VERSION != MACOSX_VERSION \
    && TARGET_OS_VERSION != NETBSD_VERSION && TARGET_OS_VERSION != FREEBSD_VERSION \
    && TARGET_OS_VERSION != LINUX_VERSION
extern "C" int setitimer(int which,
                         struct itimerval *value,
                         struct itimerval *ovalue);
#endif

// initing the timers

void IntervalTimer::init() {
  assert(Real_timer() == NULL,  "must only init itimers once");
  
  _Real_timer = new IntervalTimer( SIGALRM,   ITIMER_REAL);
   _CPU_timer = new IntervalTimer( SIGVTALRM, ITIMER_VIRTUAL);

  // For Carbon Windows under OSX: 
  // sync, not async to avoid races in event queue code
  // -- dmu 9/01
  Real_timer()->enroll_sync(check_events_freq, OS::check_events );
}


int32 IntervalTimer::ticks_per_second() { return 100; }


// constructors & destructors

IntervalTimer::IntervalTimer(int s, int t) {
  common_initialization();
  _t = new TimerEntry[number_of_entries];

 sig = s;
 timer = t;
# if TARGET_OS_VERSION == MACOSX_VERSION
 ticker_running = false;
# endif
}


IntervalTimer::~IntervalTimer() {}


// enabling/disabling a timer:

static void record_vm_thread();
void IntervalTimer::enable() {
  if (dont_use_any_timer) return;                     // no timers wanted
  if (dont_use_real_timer && sig == SIGALRM) return;  // don't install real timer
  if (!check_and_pre_enable()) return;

  record_vm_thread();   // arming thread is the Self-running thread; ticks go there
  install_tick_handler();
  start_tick_source(1000000 / ticks_per_second() / oversample_rate);  // microseconds
  post_enable();
}


void IntervalTimer::disable(bool) {
  pre_disable();
# if TARGET_OS_VERSION == MACOSX_VERSION
  // Stop this timer's VM-owned ticker (joins within at most one tick interval).
  // -- claude & dmu 5/2026
  if (ticker_running) {
    ticker_running = false;
    pthread_join(ticker_thread, NULL);
  }
# else
  static struct itimerval dt0;         // to deactivate (all zero)
  dt0.it_value.tv_sec = dt0.it_value.tv_usec = 0;
  if (setitimer(timer, &dt0, NULL))
    fatal("cannot reset timer!");
# endif
  // in OS X: can get timer killing process, try SIG_IGN instead of SIG_DFL
  (void)signal( sig, SIG_IGN);
  post_disable();
}


// Record the arming thread as the VM thread (process-global, not per-timer):
// setitimer ticks must be serviced on the thread that runs Self, which is the
// thread arming the timer here; IntervalTimerTick redirects any stray tick back
// to it.  -- claude & dmu 5/2026
static void record_vm_thread() {
  self_vm_timer_thread = pthread_self();        // pthread_kill target (both platforms)
# if TARGET_OS_VERSION == MACOSX_VERSION
  self_vm_mach_thread  = mach_thread_self();     // macOS identity check
  // Bump the VM thread to USER_INTERACTIVE QoS so it gets prompt CPU when the
  // ticker pthread_kill()s it: at the default USER_INITIATED, heavy I/O on the
  // VM thread itself (e.g. world file-out) lets the scheduler delay our signal
  // delivery enough to register as SELFTIMER stalls.  Pairs with the ticker
  // thread's own USER_INTERACTIVE/TIME_CONSTRAINT promotion below.
  // -- claude & dmu 5/2026
  pthread_set_qos_class_self_np(QOS_CLASS_USER_INTERACTIVE, 0);
# endif
  self_vm_timer_thread_known = true;
}


// Install IntervalTimerTick as the handler for this timer's signal.
void IntervalTimer::install_tick_handler() {
  struct sigaction action;
# if  TARGET_OS_VERSION == SOLARIS_VERSION \
  ||  TARGET_OS_VERSION ==  MACOSX_VERSION \
  ||  TARGET_OS_VERSION ==  NETBSD_VERSION \
  ||  TARGET_OS_VERSION ==  FREEBSD_VERSION \
  ||  TARGET_OS_VERSION ==   LINUX_VERSION
  action.sa_sigaction = (void (*)(int, siginfo_t*, void*)) IntervalTimerTick;

# elif COMPILER != GCC_COMPILER  &&  TARGET_OS_VERSION == SUNOS_VERSION
  action.sa_handler = (void (*)()) IntervalTimerTick;
# else
  # error which?
# endif

  action.sa_flags   = SignalInterface::install_flags();

  sigfillset(&action.sa_mask);
# if GENERATE_DEBUGGING_AIDS
    if (CheckAssertions) {
      sigdelset(&action.sa_mask, SIGINT);
      sigdelset(&action.sa_mask, SIGTSTP);
      sigdelset(&action.sa_mask, SIGTRAP);
    }
# endif
  sigdelset(&action.sa_mask, SIGILL);
  sigdelset(&action.sa_mask, SIGFPE);
  sigdelset(&action.sa_mask, SIGSEGV);

  if (sigaction( sig, &action, NULL) == -1) {
    perror("sigaction");
    fatal1("couldn't install signal handler for signal %ld", sig);
  }
  if (!sigismember(&action.sa_mask, sig) || !sigismember(&SignalInterface::sig_mask, sig))
    fatal1("should have masked %d", sig);
}


// Begin generating ticks: this timer's own VM-owned thread on macOS (see note
// near the top of this file), else the process-directed setitimer.
// -- claude & dmu 5/2026
void IntervalTimer::start_tick_source(long interval_usec) {
# if TARGET_OS_VERSION == MACOSX_VERSION
  ticker_interval_usec = interval_usec;
  if (!ticker_running) {
    ticker_running = true;
    if (pthread_create(&ticker_thread, NULL, ticker_main, this))
      fatal("cannot start VM timer thread!");
  }
# else
  struct itimerval dt;
  dt.it_value.tv_sec  = dt.it_interval.tv_sec  = 0;
  dt.it_value.tv_usec = dt.it_interval.tv_usec = interval_usec;
  if (setitimer(timer, &dt, NULL)) fatal("cannot start timer!");
# endif
}

// enrolling/withdrawing tasks


void IntervalTimer::enroll_async(float freq, doFn fn) {
  TimerEntry* e = alloc_entry();
  int32 factor = (int32) rint(float(ticks_per_second()) / freq);
  e->initialize((doFn)-1, fn, factor);
}


void IntervalTimer::enroll_sync(float freq, doFn fn) {
  TimerEntry* e = alloc_entry();
  int32 factor = (int32) rint(float(ticks_per_second()) / freq);
  e->initialize(fn, (doFn)-1, factor);
}


void IntervalTimer::enroll_async_if_safe(float freq, doFn fn) {
  # if TARGET_ARCH == I386_ARCH				\
    && (TARGET_OS_VERSION == LINUX_VERSION		\
	|| TARGET_OS_VERSION == NETBSD_VERSION		\
	|| TARGET_OS_VERSION == FREEBSD_VERSION)
    enroll_sync(freq, fn); // Fix spy crash
  # else
   enroll_async(freq, fn);
  # endif
}


void IntervalTimer::withdraw_entry(TimerEntry*) {}

void IntervalTimer::move_entry(TimerEntry* from, TimerEntry* to) { *to = *from; }


#define SIGNONE -1

#if TARGET_ARCH == I386_ARCH						\
    && (TARGET_OS_VERSION == NETBSD_VERSION				\
	|| TARGET_OS_VERSION == FREEBSD_VERSION)
__attribute__((force_align_arg_pointer))
#endif
void IntervalTimerTick(int sig, self_code_info_t *info, self_sig_context_t *scp) {
  // Make sure this tick is processed on the VM thread (see file header).  A
  // tick delivered to any other thread is redirected there; the real handler
  // below only ever runs on the VM thread, where `scp` is a Self context.
  if (!self_vm_timer_thread_known)
    return;                              // armed before VM thread was recorded
# if TARGET_OS_VERSION == MACOSX_VERSION
  // Identify the VM thread by Mach port; pthread_self() faults on foreign host
  // threads in signal context.  With the VM-owned ticker this redirect is now
  // a safety net for stray process-directed ticks.  -- claude & dmu 5/2026
  mach_port_t mt = mach_thread_self();
  bool on_vm_thread = (mt == self_vm_mach_thread);
  mach_port_deallocate(mach_task_self(), mt);
  if (!on_vm_thread) {
    ++itt_nonvm_ticks;
    pthread_kill(self_vm_timer_thread, sig);   // async-signal-safe
    return;
  }
# else
  if (!pthread_equal(pthread_self(), self_vm_timer_thread)) {
    ++itt_nonvm_ticks;
    pthread_kill(self_vm_timer_thread, sig);   // async-signal-safe
    return;
  }
# endif
  ++itt_vm_ticks;

  // A Mac OS X application, ApplicationEnhancer, causes the VM to receive nested
  // SIGALRM/SIGVTALRM signals.
  // We don't know why this is happening, since our call to sigaction (where
  // the SIGALRM/SIGVTALRM handlers are installed) specified that we don't want
  // recursive timer signals.
  // As a workaround to this funny behaviour induced by ApplicationEnhancer, we
  // check if we're in a recursive SIGALRM/SIGVTALRM handler.  If we receive a
  // recursive SIGALRM/SIGVTALRM signal, then we immediately return from the
  // signal handler.  This is OK since it's not a catastrophe if we ignore a
  // timer signal. -mabdelmalek 10/02
  
  // Now we are getting SIGIO's while in the SIGVTALRM handler, maybe
  // caused by ApplicationEnhancer--argh! -- dmu 6/03
  
  if (InterruptedContext::the_interrupted_context->forwarded_to_self_thread(sig))
    return;
  
  if (SignalInterface::currentNonTimerSignal || SignalInterface::currentTimerSignal) {
    static bool haveWarned = false;
    if (!haveWarned) {
# if TARGET_OS_VERSION == LINUX_VERSION
      warning3("IntervalTimerTick: signal_handler cannot nest (only one interrupted context).\n"
               "Received timer sig %d while in sig %d or timer sig %d.\n"
               "MacOSX ApplicationEnhancer causes apps to get signals that should be blocked.",
               sig, 
               SignalInterface::currentNonTimerSignal,
               SignalInterface::currentTimerSignal);
# elif TARGET_OS_VERSION == SOLARIS_VERSION
      warning6("IntervalTimerTick: signal_handler cannot nest (only one interrupted context).\n"
               "Received timer sig %d (%s) while in sig %d (%s) or timer sig %d (%s).\n",
               sig, strsignal(sig),
               SignalInterface::currentNonTimerSignal, strsignal(SignalInterface::currentNonTimerSignal),
               SignalInterface::currentTimerSignal, strsignal(SignalInterface::currentTimerSignal));
# else
      warning6("IntervalTimerTick: signal_handler cannot nest (only one interrupted context).\n"
               "Received timer sig %d (sig%s) while in sig %d (sig%s) or timer sig %d (sig%s).\n"
               "MacOSX ApplicationEnhancer causes apps to get signals that should be blocked.",
               sig, sys_signame[sig],
               SignalInterface::currentNonTimerSignal, sys_signame[SignalInterface::currentNonTimerSignal],
               SignalInterface::currentTimerSignal, sys_signame[SignalInterface::currentTimerSignal]);
# endif
      haveWarned = true;
    }
    return;
  }           
  SignalInterface::currentTimerSignal = sig;       

  // this is called at every tick of our timer
  if (processSemaphore || IntervalTimer::dont_use_any_timer) {
    // We're in a critical region, so return from the timer interrupt 
    // without overwriting InterruptedContext::the_interrupted_context.
    // The check for dont_use_any_timer is for better debugging with gdb.

    SignalInterface::currentTimerSignal = 0;
    return;
  }
  
# if TARGET_OS_VERSION != MACOSX_VERSION
  // The following assertion fails on Mac OS X when ApplicationEnhancer is running.
  // Since it's not critical that we execute on a signal stack, we can skip
  // the assertion.  -mabdelmalek 10/02
  assert(SignalInterface::is_on_signal_stack(), "should be on interrupt stack");
# endif
  assert(!IntervalTimer::dont_use_any_timer, "should not have timer interrupts");
  
  InterruptedContext::the_interrupted_context->set(scp);

  IntervalTimer* t =  sig == SIGALRM ? IntervalTimer::Real_timer() 
                                     : IntervalTimer:: CPU_timer();
  t->do_async_tasks();
  
  if ( PendingSelfSignals::keyboard_signals() != 0 ) 
    preemptor();
        
  InterruptedContext::the_interrupted_context->invalidate();

  SignalInterface::currentTimerSignal = 0;

  if (IntervalTimer::dont_use_any_timer  && sig == SIGVTALRM)
    IntervalTimerTick(SIGALRM, info, scp);  // simulate real timer
  }


void IntervalTimer::do_async_tasks() {
  for ( fint i = 0;  i < registered;  ++i)
    entry_at(i)->do_procs_if_needed();
}

TimerEntry* IntervalTimer::entry_at(int i) { return &entries()[i]; }

# if TARGET_OS_VERSION == MACOSX_VERSION
// --- dedicated VM-owned timer thread ---------------------------------------
// Replaces setitimer, which is process-directed: the kernel hands SIGALRM/
// SIGVTALRM to any host thread (AppKit/GCD), forcing the ~200/s pthread_kill
// bounce -- whose pthread_self() identity check faults (EXC_BREAKPOINT) on
// foreign threads.  Each enabled timer instead owns this thread, which sleeps
// the interval (wall clock) and pthread_kill()s the VM thread directly, so the
// tick is *always* delivered to the right thread.  (Wall-clock ticks replace
// ITIMER_VIRTUAL's CPU-time accounting; on macOS the CPU timer is usually
// aliased to the real timer anyway -- use_real_instead_of_cpu_timer.)
// -- claude & dmu 5/2026
void* IntervalTimer::ticker_main(void* arg) {
  IntervalTimer* self = (IntervalTimer*)arg;
  pthread_setname_np("self-vm-timer");
  // Run at the highest QoS so the scheduler wakes us promptly after each
  // nanosleep -- otherwise host load deprioritizes this thread and ticks arrive
  // 50-100ms late (the SELFTIMER stalls), which would stutter timer-driven UI
  // animation.  This thread is a pure sleeper, so high QoS costs ~no CPU.
  // -- claude & dmu 5/2026
  pthread_set_qos_class_self_np(QOS_CLASS_USER_INTERACTIVE, 0);
  // Belt-and-suspenders: ask the Mach scheduler to honor a 10ms-period,
  // 10ms-deadline contract (same mechanism CoreAudio uses to stay punctual).
  // QoS alone is advisory; under heavy load the scheduler still slips ticks by
  // 50-100ms (the SELFTIMER stalls seen during world file-out).  A
  // time-constraint policy promises the thread a budget within each period;
  // it is preemptible (preemptible=TRUE) so it never starves the VM thread
  // itself.  Cheap for a pure sleeper.  -- claude & dmu 5/2026
  {
    mach_timebase_info_data_t tb;
    mach_timebase_info(&tb);
    // Convert nanoseconds -> mach abs-time ticks: abs = ns * tb.denom / tb.numer.
    uint64_t period_ns      = (uint64_t)self->ticker_interval_usec * 1000ULL;
    uint64_t computation_ns = 500ULL * 1000ULL;     // ~500us of CPU per tick
    uint64_t period_abs      = period_ns      * tb.denom / tb.numer;
    uint64_t computation_abs = computation_ns * tb.denom / tb.numer;
    thread_time_constraint_policy_data_t pol;
    pol.period      = (uint32_t)period_abs;
    pol.computation = (uint32_t)computation_abs;
    pol.constraint  = (uint32_t)period_abs;          // deadline == period
    pol.preemptible = TRUE;
    thread_policy_set(mach_thread_self(),
                      THREAD_TIME_CONSTRAINT_POLICY,
                      (thread_policy_t)&pol,
                      THREAD_TIME_CONSTRAINT_POLICY_COUNT);
  }
  // This thread only *sends* the tick; it must never be chosen to handle a
  // VM signal, so block everything but the fatal (synchronous) signals.
  sigset_t block;
  sigfillset(&block);
  sigdelset(&block, SIGSEGV);
  sigdelset(&block, SIGBUS);
  sigdelset(&block, SIGILL);
  sigdelset(&block, SIGFPE);
  sigdelset(&block, SIGTRAP);
  sigdelset(&block, SIGABRT);
  pthread_sigmask(SIG_BLOCK, &block, NULL);
  // -- diag: only the real-timer ticker watches for its OWN sleep overrun -- a
  //    process-starvation canary (asked to sleep 10ms, slept far longer).  The
  //    two tickers don't both print.  -- claude & dmu 5/2026
  bool reporter = (self->sig == SIGALRM);
  while (self->ticker_running) {
    long usec = self->ticker_interval_usec;
    struct timespec ts;
    ts.tv_sec  =  usec / 1000000;
    ts.tv_nsec = (usec % 1000000) * 1000;
    struct timespec before;
    if (reporter) clock_gettime(CLOCK_MONOTONIC, &before);
    nanosleep(&ts, NULL);
    if (self->ticker_running  &&  self_vm_timer_thread_known)
      pthread_kill(self_vm_timer_thread, self->sig);   // async-signal-safe
    if (reporter) {
      struct timespec after;
      clock_gettime(CLOCK_MONOTONIC, &after);
      long iter_usec = (after.tv_sec - before.tv_sec) * 1000000L
                     + (after.tv_nsec - before.tv_nsec) / 1000;
      // Suppress sleep/wake artifacts: CLOCK_MONOTONIC advances across some
      // macOS sleep states, so a nanosleep spanning lid-close -> lunch -> wake
      // reports a multi-second "stall" that isn't a scheduling problem we can
      // fix.  Anything beyond ~1s is the laptop having been asleep, not host
      // scheduling contention -- the symptom we actually care about.
      // -- claude & dmu 5/2026
      const long absurd_us = 1000000;     // 1s
      if (iter_usec > usec * 5 + 1000 && iter_usec < absurd_us)
        lprintf("SELFTIMER stall: ticker slept %ld us (asked %ld); "
                "vm_ticks=%d nonvm_ticks=%d\n",
                iter_usec, usec, (int)itt_vm_ticks, (int)itt_nonvm_ticks);
    }
  }
  return NULL;
}
# endif
