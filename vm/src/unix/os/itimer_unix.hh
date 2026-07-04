/* Sun-$Revision: 30.7 $ */

/* Copyright 1992-2012 AUTHORS.
   See the LICENSE file for license information. */

 private:
  int32 sig, timer;
# if TARGET_OS_VERSION == MACOSX_VERSION
  // This timer's VM-owned tick sender (replaces process-directed setitimer;
  // see itimer_unix.cpp).  -- claude & dmu 5/2026
  pthread_t      ticker_thread;
  volatile bool  ticker_running;
  long           ticker_interval_usec;
  static void*   ticker_main(void* self);
# endif

  void install_tick_handler();              // sigaction for `sig` -> IntervalTimerTick
  void start_tick_source(long interval_usec); // VM-owned ticker (macOS) or setitimer

  void sleep_and_maybe_signal_reporting_ticker_stall_if_any();
  long sleep_and_maybe_signal();

  IntervalTimer(int32 sig, int32 timer);
  
 public: // for IntervalTimerTick
   void do_async_tasks();
  
 public:
  enum { LRU_resolution = 4 }; // LRU timer resolution in secs
