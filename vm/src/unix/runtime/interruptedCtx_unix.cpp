/* Sun-$Revision: 30.9 $ */

/* Copyright 1992-2012 AUTHORS.
   See the LICENSE file for license information. */

# pragma implementation "interruptedCtx_unix.hh"
# include "_interruptedCtx_unix.cpp.incl"

# if TARGET_OS_VERSION == MACOSX_VERSION
#   include <mach/mach.h>
// The VM thread's Mach port.  pthread_self() can fault (EXC_BREAKPOINT / PAC)
// when a process-directed signal lands on a foreign host thread (AppKit /
// LaunchServices / GCD worker) whose libpthread TSD is invalid in signal
// context, so the forwarding check below compares Mach ports instead -- a bare
// trap that is safe on any thread.  -- claude & dmu 5/2026
static mach_port_t the_self_mach_thread = MACH_PORT_NULL;
# endif


self_sig_context_t InterruptedContext::dummy_scp;


void InterruptedContext::set_the_self_thread() {
  the_self_thread = pthread_self();
# if TARGET_OS_VERSION == MACOSX_VERSION
  the_self_mach_thread = mach_thread_self();
# endif
}

bool InterruptedContext::is_in_self_thread() {
# if TARGET_OS_VERSION == MACOSX_VERSION
  // Identity check must agree with forwarded_to_self_thread()'s Mach-port test
  // (above): pthread_self() is unreliable in signal context, and this is
  // reached from the timer signal handler via set() -> must_be_in_self_thread().
  // A pthread compare here disagreed with the Mach check that had just let the
  // tick through, firing a bogus nested fatal that clobbered crash dumps.
  // -- claude & dmu 5/2026
  mach_port_t mt = mach_thread_self();
  bool on_self_thread = (mt == the_self_mach_thread);
  mach_port_deallocate(mach_task_self(), mt);
  return on_self_thread;
# else
  return pthread_self() == the_self_thread;
# endif
}

void InterruptedContext::must_be_in_self_thread() {
  if (CheckAssertions && !is_in_self_thread())
    fatal("must_be_in_self_thread");
}



bool InterruptedContext::forwarded_to_self_thread(int sig) {
#if TARGET_OS_VERSION == NETBSD_VERSION
  // This branch is really "if not linked with pthreads".
  // NetBSD libc provides a stub for pthread_self().
  must_be_in_self_thread();
  return false;
#else
# if TARGET_OS_VERSION == MACOSX_VERSION
  // Identify the VM thread by Mach port; pthread_self() faults on foreign
  // host threads in signal context (see note above).  -- claude & dmu 5/2026
  mach_port_t mt = mach_thread_self();
  bool on_self_thread = (mt == the_self_mach_thread);
  mach_port_deallocate(mach_task_self(), mt);
  if (on_self_thread) return false;
# else
  if (is_in_self_thread()) return false;
# endif
  if (pthread_kill(the_self_thread, sig)) {
    perror("pthread_kill");
    fatal("forwarded_to_self_thread failed");
  }
  return true;
#endif
}


bool InterruptedContext::in_read_trap()  { return  in_system_trap()  &&  system_trap() == SYS_read;  }
bool InterruptedContext::in_write_trap() { return  in_system_trap()  &&  system_trap() == SYS_write; }
