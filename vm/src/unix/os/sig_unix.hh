/* Sun-$Revision: 30.12 $ */

/* Copyright 1992-2012 AUTHORS.
   See the LICENSE file for license information. */
      
 public:
  // Certain OS signals used by SIC, etc
  static const int32 SIGNonLifo    = SIGILL;
  static const int32 SIGUncommon   = SIGILL;
  static const int32 SIGBadHomeRef = SIGSEGV;

  static const int32 ST_UpLevel    = SIGUSR1;    // trap # for non-LIFO block traps

# if  GENERATE_DEBUGGING_AIDS
  static const int32 ST_ShouldNeverHappen = SIGUSR2; // used by SIC to mark impossible case
# endif


 private:
  // Platform parameter:
  static const bool need_preemptor_for_timer = false;
  
  // =============================================================
  
  // Unix-specific declarations:
  
  // Implementation
  friend class IntervalTimer; // for debugguging OS X
  static sigset_t old_mask, sig_mask;
  static char* signal_stack;
  // ensure generic val is enough for ppc
  static int32 signal_stack_size;
  friend class SignalBlocker; // Unix version needs to see mask

  friend void OS::core_dump(); // calls install signal to revert SIGABRT
  static void install_signal(int sig, Signal_Handler_t handler);
  static void init_signal_stack();
  static void init_sig_mask();

 public:
  // A synchronous fault (SEGV/BUS/ILL/FPE) raised while its own signal is
  // masked -- e.g. a crash inside that signal's handler -- makes the kernel
  // re-execute the faulting instruction forever (observed on macOS: silent
  // 100% CPU spin).  Crash handling calls this before doing risky work such
  // as stack printing so a nested fault re-enters the handler and the
  // abortLevel escalation can terminate the process instead. -- rca
  static void unblock_synchronous_fault_signals();

  // A handler that exits non-locally (e.g. the crashomatic's return-to-prompt
  // discarding the whole stack) never reaches sigreturn, so the kernel keeps
  // the handler-entry mask (sa_mask = sig_mask = nearly every signal)
  // installed forever: no tick, SIGIO, ^C, or kill can be delivered again and
  // the next fd-less select() in _TWAINS sleeps unwakeably.  Such a path must
  // restore the normal running mask (empty) by hand. -- claude & dmu 7/2026
  static void unblock_all_signals();

  // Belt to the above suspenders: the scheduler's idle wait is woken only by
  // signal delivery, so the mask must be open when it parks.  Called at
  // _TWAINS entry; forces the mask open and warns (once) if it found the
  // timer/IO signals blocked, so any leak path not yet plugged is survivable
  // and still gets reported. -- claude & dmu 7/2026
  static void heal_leaked_mask_before_idle_wait();
 private:

 public:
// Mac OS X and Solaris almost have the same signal handling flags/calls.
// So we use common code for both platforms as much as possible. -mabdelmalek 10/02
# if  TARGET_OS_VERSION == SOLARIS_VERSION  \
  ||  TARGET_OS_VERSION ==  MACOSX_VERSION  \
  ||  TARGET_OS_VERSION ==   LINUX_VERSION
   static int install_flags() { return SA_ONSTACK | SA_SIGINFO | SA_RESTART; }
# elif TARGET_OS_VERSION == NETBSD_VERSION  \
  ||   TARGET_OS_VERSION == FREEBSD_VERSION
   // This needs to play along with setNotifyEvents and setAsync - and
   // with SA_RESTART it doesn't (cf. unix.self).  I'm not quite sure
   // why yet.  For now just commit what is known to work.
   static int install_flags() { return SA_ONSTACK | SA_SIGINFO; }
# elif TARGET_OS_VERSION == SUNOS_VERSION
   static int install_flags() { return SA_ONSTACK; /* ! SA_INTERRUPT */ }
# else
  # error what?
# endif // which OS_VERSION

  // ApplicationEnhancer for MacOSX causes us to receive signals when they should be blocked.
  // Hack around this with these flags. -- dmu & m abd-el-malek 6/03
  static int currentNonTimerSignal;
  static int currentTimerSignal;
