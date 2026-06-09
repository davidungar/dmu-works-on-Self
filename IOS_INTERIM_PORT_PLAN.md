# Self VM — iOS / visionOS flat-window interim port plan

*Investigation + implementation plan. Authored by claude & dmu, 6/2026 (AVP-port branch).*

## 0. Goal & scope

Get the Self VM running **on-device (iOS / iPadOS / visionOS)** as one or more **flat 2D windows**, one per Self world/UI, as an interim stage before the spatial (RealityKit texture + host-bridge) endgame.

Guiding architectural choice (settled during investigation):

> **VM is the app and owns the main thread** (mirrors the existing macOS Cocoa port), present via the existing **IOSurface → CALayer** path, pump the run loop **cooperatively** via the existing 30 Hz timer, and offload **only full GC** to a second thread so a long compaction can't starve the run loop.

This keeps every interactive path single-threaded on `main` — so all the synchronous UIKit geometry calls stay free and legal and the event queue stays single-threaded — and moves across a thread boundary only the one component that needs nothing from UIKit (GC). The IOSurface render path is identical to what the eventual spatial bridge needs, so nothing here is throwaway except the UIKit shell itself.

The whole graphics core (Core Graphics / Core Text / IOSurface / CALayer in `quartzWindow.mm`) already compiles on iOS/visionOS unchanged. The porting work is the **AppKit shell** and the **two VM-level enablers** below.

---

## 1. What the investigation established (with anchors)

### 1.1 The VM already pumps cooperatively at 30 Hz

The macOS build is *not* a busy loop — it already has the exact cooperative structure iOS needs:

- Dedicated **VM-owned timer thread** `IntervalTimer::ticker_main` (`vm64/src/unix/os/itimer_unix.cpp:393`) sleeps the interval and `pthread_kill`s the VM thread (`:451`). This is portable to iOS (`pthread_kill`/signals work on iOS).
- Signal handler `IntervalTimerTick` (`itimer_unix.cpp:265`) runs on the VM thread, calls `do_async_tasks()` and `preemptor()`.
- `preemptor()` (`process.cpp:891`) → `InterruptedContext::setupPreemptionFromSignal()` → `currentProcess->setupPreemption()` = `setSPLimit(stackEnd())` (`process.hh:129`). arm64 path: `aarch64/runtime/interruptedCtx_aarch64.cpp:34`.
- The **pump itself** `QuartzWindow::check_carbon_events()` (`quartzWindow.mm:1354`) is enrolled as a **sync** timer task at **30 Hz** (`check_events_freq = 30`, `itimer.hh:153`; `Real_timer()->enroll_sync(check_events_freq, OS::check_events)`, `itimer_unix.cpp:86`). `OS::check_events` → `check_carbon_events` via `os_unix.cpp:999`.

So the only macOS-specific thing about the pump is its *body*: `[NSApp nextEventMatchingMask:…dequeue:YES]` + `[NSApp sendEvent:]`. That is the AppKit dependency to replace.

### 1.2 Safepoints — PARTIAL (this is the fix you predicted)

Timer preemption is delivered via the SPLimit trick and checked **only at method entry**:

- Method prologue: `if (fastPreemptionCheck()) … interruptCheck()` (`interpreter.cpp:373`). `fastPreemptionCheck()` = `currentFrame() <= currentSPLimit()` (`aarch64/runtime/runtime_aarch64.hh:81`, amd64 parity at `runtime_amd64.hh:81`).
- **Sends**: no explicit check *by design* — "send causes a new interpreter which calls interpret_method, which calls interruptCheck" (`interpreter.cpp:542`). ✅ sends are safepoints transitively.
- **Backward branches**: `do_branch_code` (`interpreter.cpp:417`) calls only `transfer_back_to_twains_process_if_stepping_or_stopping_pre()`, which acts **only when the debugger is single-stepping/stopping** (`interpreter.cpp:1067`). It does **not** call `fastPreemptionCheck()`/`interruptCheck()`. There's even a commented-out `// fastPreemptionCheck();` at `interpreter.cpp:1071`.

**Consequence:** a tight Self loop the compiler inlined into branches **with no message sends** is never timer-preempted — it only yields at sends/method-entry. Such a loop (or a long primitive) blocks the 30 Hz pump → on iOS that risks the watchdog. **Fix: add a preemption check at backward branches.** (See §3, Phase 2.)

`interruptCheck()` (`process.cpp:1760`): handles stack overflow, profiler overflow, else `handlePreemption()`; also continues a kill/deopt NLR. `handlePreemption()` (`process.cpp:821`) runs `if (Memory->needs_scavenge()) Memory->scavenge();` — **GC fires synchronously here, on the VM thread.**

### 1.3 GC is offloadable to a second thread — FEASIBLE (agent's "no" was too strong)

GC root-finding is **precise and registry-based**, reachable entirely from process-global state — it does **not** read the executing thread's live registers/SP:

- Global roots: `APPLY_TO_VM_OOPS` (`universe.more.cpp:163` scavenge, `:258` mark) + maps, `string_table`, `processes`, `profilers`, `code`, `interpreter_pic_table`.
- Per-process roots: `processes->scavenge_contents()` → `Process::scavenge_contents` (`process.cpp:723`) walks the Process `stack()` object **and** the authoritative per-process `active_interp_list` (`process.cpp:737` scavenge, `:761` mark, `:794` switch_pointers). The 5/2026 fix comments there state the **frame-chain walk is unreliable** and `active_interp_list` is the authority.
- The live-stack `frame_iterator` path is **guarded off during GC**: `if (!GCInProgress && !ScavengeInProgress)` (`frame_iterator_amd64.cpp:91`; flags set in `universe.more.cpp:123/124/225`).
- `currentProcess` is a **plain global** (`process.cpp:23`, `extern` at `process.hh:16`), not `__thread` — visible to any thread.

Therefore, **if the mutator (VM thread A) is fully frozen at a safepoint**, a second thread B can perform the entire traversal: every root is reachable from globals / `processes` / `active_interp_list`, and any interpreter objects that happen to live on A's frozen C stack are safe to read because A isn't running. The only existing extra thread today is the timer thread (which just signals); GC has never been spawned, but nothing in its root model *requires* the mutator thread.

**Caveats that make this correct (must be honored — see Phase 3):**
1. **Full barrier at handoff** so B sees all of A's heap/root writes (semaphore/condvar release-acquire provides it).
2. **A must touch no Self oop while parked.** The pump path qualifies as-is (event handlers `new OpaqueEventRef` = C heap; present just blits IOSurface). The one oop-allocating routine in this file, `get_scrap_text` (`quartzWindow.mm:1267`), is Self-driven and cannot run while A is parked. Keep this invariant.
3. **Timer signal during GC.** The timer `pthread_kill`s A. While A is parked, the signal handler still runs on A; `preemptor()` only sets SPLimit (harmless), but verify async tasks touch no heap, or block the timer during the parked window (`IntervalTimer::disable_all(true)` already exists and is used for sleep at `quartzWindow.mm:475`).
4. **Nesting:** full GC is invoked from *inside* scavenge (`universe.more.cpp:142`) and scavenge from many allocation sites. Choose the offload choke point carefully (Phase 3 offloads **full GC only**, the rare long one; scavenge stays inline because it's short).

---

## 2. Architecture: thread & ownership model

```
main thread (A)  = VM thread = mutator + interpreter + ALL UIKit + event queue + pump
second thread (B)= full-GC worker (idle until a full GC is requested)
timer thread     = existing ticker_main (unchanged): sleeps, pthread_kill(A)
```

- All `QuartzWindow` geometry/window calls run on A = main ⇒ free, legal, no marshaling.
- `EventQueue` is touched only by A (touches arrive on A, interpreter consumes on A) ⇒ stays single-threaded, no locks. (`quartzWindow.hh:456`)
- Steady-state pumping: 30 Hz timer → SPLimit → safepoint → `check_events` → CFRunLoop pump. Unchanged design.
- Long full-GC pause: A parks in a **pump-only** loop and hands the collection to B (Phase 3). Until Phase 3, full GC runs inline on A (Phase 1 measures whether that's even a problem).

---

## 3. Phased implementation

### Phase 0 — Build / target plumbing (prerequisite)

- [ ] Add an iOS/visionOS library target (mirror `cmake-build-ios-lib` / `cmake-build-AVP-framework` which already exist). Confirm `QUARTZ_LIB` + `__aarch64__` compile path covers iOS; gate AppKit vs UIKit with `TARGET_OS_IPHONE` / `TARGET_OS_VISION` inside the existing `#if defined(QUARTZ_LIB) && defined(__aarch64__)` block.
- [ ] Confirm `pthread_kill` + `SIGALRM`/`SIGVTALRM` signal delivery works under the iOS target (it does on-device; verify the entitlement/sandbox doesn't interfere). The timer thread (`itimer_unix.cpp`) should need no change.
- [ ] Decide app packaging: a thin SwiftUI/UIKit `App` whose only job is to (a) create the window/scene, (b) hand the content `UIView` to the VM, (c) start the VM after launch. The VM still owns the run loop cooperatively (emulator pattern).

### Phase 1 — Flat-window interim (get it running; GC inline)

Replace the AppKit shell in `quartzWindow.mm`. Add a `TARGET_OS_IPHONE` branch alongside the existing AppKit code (don't delete AppKit — keep macOS working).

- [ ] **Window/view:** `NSWindow`→`UIWindow`+`UIViewController`; `SelfContentView : NSView`→a `UIView` subclass. Keep `wantsLayer`/`updateLayer` equivalent: set `layer.contents = (id)ioSurface` (works on iOS). `isFlipped` has no UIKit analog — UIView layer coords are already y-down/top-left; **re-check the CTM flip** in `setupCTM` (`quartzWindow.mm:1074`) and the `+1/-1` rect conventions, because the macOS code assumes a y-up CGContext (`isFlipped:NO`). This is the most likely source of upside-down / off-by-one rendering on first light.
- [ ] **Present path:** `blitIOSurfaceToView` / `updateLayer` (`quartzWindow.mm:451,573`) → same CALayer assignment, but ensure it runs on main (it will — A is main).
- [ ] **Event in:** `mouseDown/Moved/Dragged/Up`, `scrollWheel`, `keyDown` → `UIView` `touchesBegan/Moved/Ended/Cancelled`, `UIHoverGestureRecognizer` (iPad/visionOS pointer), `UIPanGestureRecognizer` for scroll, `UIKey`/`pressesBegan` for keys. Build the same `OpaqueEventRef`s and call `put_event` (queue API is platform-neutral). **Mouse-model gap:** single touch ⇒ left-button drag; pick a chord/right-button strategy (long-press, two-finger, or modifier) — this is unavoidable regardless of architecture.
- [ ] **The pump:** rewrite the body of `check_carbon_events` (`quartzWindow.mm:1354`) for iOS:
  ```objc
  // iOS: no nextEventMatchingMask; spin the run loop once to deliver
  // queued UITouches/timers to our UIView handlers, then return.
  while (CFRunLoopRunInMode(kCFRunLoopDefaultMode, 0, true) == kCFRunLoopRunHandledSource) {}
  ```
  Then keep the existing per-window IOSurface re-blit loop. Everything else (`system_is_sleeping`, stack-overflow guard) stays.
- [ ] **Launch / watchdog:** the VM must not block `application:didFinishLaunchingWithOptions:`. Return promptly, then start the VM loop on the next run-loop turn (or a `CADisplayLink` tick). The VM then runs its normal cooperative loop, pumping CFRunLoop at 30 Hz via the timer. (This is exactly how console emulators run on iOS.)
- [ ] **Lifecycle:** map `NSWorkspaceWillSleep` sleep-guard (`quartzWindow.mm:472`) to `UIApplication`/scene background notifications; map `NSScreen` size (`:937`) to `UIScreen`/scene; **drop** `warp_pointer` (`:1246` — no cursor on iOS), `menubar_height`, window insets (no programmatic chrome).
- [ ] **One OS window = one Self world.** Self's own in-world windows are morphs drawn into the single IOSurface — they need no OS windows. Start with a single world filling one window/scene. Multi-OS-window ("one per desktop/ui") is a later step and is system/scene-mediated on iOS (free on visionOS as floating Window scenes, limited on iPad, single on iPhone) — Self's WM geometry won't be honored at the OS-window level, which is fine because the geometry Self cares about is inside the surface.
- [ ] **Clipboard:** `NSPasteboard` (`:1267`) → `UIPasteboard`.
- [ ] **Measure** (the whole point of Phase 1): instrument the longest uninterrupted VM stretch between pumps, reusing the timer instrumentation habit. Two numbers matter: worst-case **full-GC** duration and worst-case **send-free-loop** duration. These decide whether Phase 2/3 are needed for correctness vs just smoothness.

**Exit criteria:** Self world renders right-side-up on-device, touches drive the morphic UI, app survives launch + a few minutes of use without watchdog termination.

### Phase 2 — Backward-branch safepoint (so send-free loops pump)

Make timer preemption honored at loop back-edges, not just method entry.

- [ ] In `do_branch_code` (`interpreter.cpp:417`), when the branch is **backward** (`target_PC <= pc`, accounting for the pc-increment convention) **and** `fastPreemptionCheck()` is true, run the same interrupt path the prologue uses — `SaveNonVolRegsAndCall0(interruptCheck)` wrapped in the `setjmp(_nlr_jmpbuf)` + `have_NLR_through_C()` handling at `interpreter.cpp:377-384`. Mirror it; don't invent a new path.
- [ ] Preserve interpreter state across the check exactly as the existing code does (`do_branch_code` already wraps `target_oop` in `preserved` against a scavenge during transfer — extend that discipline to `sp`/`pc`/`stack`/`cloned_blocks` as needed). Resumption after preemption relies on the green-thread process switch (`twainsProcess->transfer()`) saving/restoring A's C stack, so a back-edge preempt resumes right after the check.
- [ ] Gate on backward-only to keep overhead off forward branches. Consider also `do_BRANCH_INDEXED_CODE` (`:435`) if it can form a loop.
- [ ] Verify against the compiled-VM convention (which already safepoints at sends + backward branches) so behavior matches.
- [ ] Test: a pure arithmetic `whileTrue:` loop with no sends must now yield to the pump (UI stays responsive during it).

**Risk:** calling `interruptCheck` mid-method is more delicate than at the fresh prologue (live stack, NLR/abort unwinding). The setjmp/NLR machinery already exists at the prologue — reuse it verbatim. This is the single most careful change in the plan.

### Phase 3 — Offload full GC to thread B (smoothness; only if Phase 1 measurement demands)

Keep scavenge inline (short, frequent). Offload **only `universe::garbage_collect`** (rare, long).

- [ ] Spawn a persistent worker thread B (or use a semaphore-driven dispatch) at VM init.
- [ ] At the point full GC is requested (`universe.more.cpp:142`, and any direct callers), instead of A calling `garbage_collect` inline: A posts the request to B, then enters a **pump-only park loop**:
  ```
  while (!gc_done) { check_carbon_events_pump_only(); short_sleep_or_wait_with_timeout(); }
  ```
  A touches **no Self oop** in this loop (invariant from §1.3.2).
- [ ] B runs `garbage_collect` to completion, then signals `gc_done` with a release barrier; A acquires and resumes.
- [ ] **Block the timer signal on A while parked** (`IntervalTimer::disable_all(true)` / `enable_all()` — already used for sleep at `quartzWindow.mm:475,483`) OR prove the signal handler touches no heap while parked.
- [ ] Confirm B sees consistent heap state: full barrier at handoff; A quiescent; `GCInProgress` already disables the frame_iterator live path.
- [ ] `frame_iterator` register/SP bootstrap: confirm nothing in the full-GC path reads A's CPU registers (the `!GCInProgress` guard at `frame_iterator_amd64.cpp:91` / its aarch64 twin should cover it — **verify the aarch64 frame_iterator has the same guard**).
- [ ] Test: force frequent full GCs (shrink heap) and confirm the UI keeps animating during compaction and the app is never watchdog-killed.

**Note:** Phase 3 is a *smoothness/robustness* optimization. iOS hard-terminates mainly at **launch** and on multi-second main-thread hangs; a sub-second inline full GC likely only causes a frame hitch. Let the Phase 1 numbers decide whether to build Phase 3 now or defer.

---

## 4. Risks / things to verify on-device

1. **CTM/flip & rect conventions** under UIKit's layer coordinate space vs the macOS `isFlipped:NO` y-up context (`setupCTM`, the `+1/-1` rect fudges discussed at `quartzWindow.mm:1184-1219`). Most likely first-light bug.
2. **Launch watchdog**: VM must not block `didFinishLaunching`; start on next turn.
3. **Send-free loops** starving the pump until Phase 2 lands (measure in Phase 1).
4. **Full-GC pause** length (measure in Phase 1; Phase 3 if needed).
5. **Signals under iOS sandbox** — confirm `pthread_kill`+`SIGALRM` timer path is delivered (should be fine; verify).
6. **aarch64 frame_iterator GC guard** parity with amd64 (`frame_iterator_amd64.cpp:91`).
7. **Mouse-model mapping** (chord/right-button/hover) — product decision needed.

## 5. Open questions for David

- Multi-OS-window now, or single-world-per-window for the interim? (Recommend single to start.)
- Target order: iPad first (closest to mac, real pointer + multi-scene) or AVP first (matches the branch)?
- Chord/right-click gesture convention?
- Is Phase 2 (backward-branch safepoint) wanted regardless of iOS (it also tightens preemption on macOS / matches the compiled VM)?

## 6. One-line summary of the verdict

Your instinct holds: the interpreter **already** safepoints at sends/method-entry but **not** at backward branches (fixable, Phase 2), and full GC **can** be spun onto a second thread because its roots are registry-based and it touches no UIKit (Phase 3) — so the watchdog risk collapses to "a short parked pump during a rare full GC," and the bulk of the port is swapping the AppKit shell for a UIKit one (Phase 1) over the already-portable Core Graphics / IOSurface / CALayer render path.
