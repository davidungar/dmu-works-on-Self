# Self VM on Apple platforms — reconciled sequencing

*Reconciles the two port paths into one ordered plan. claude & dmu, 6/2026, branch AVP-port.*

Two written plans exist:
- **Interim flat-window** (VM-is-the-app, UIKit shell): `IOS_INTERIM_PORT_PLAN.md`
- **Host-bridge / RealityKit** (VM-as-guest in SpatialSelf, IOSurface→texture): `vm64/build_support/embed/HOST_BRIDGE_PLAN.md` (+ rationale `AVP_FRAMEBUFFER_RENDERING.md`)

They share the **IOSurface render contract** and diverge only on who owns the window/main thread.

## Decision: backward-branch preemption is item #1

It is the only change that is **path-independent, lands and tests on macOS today, and is the riskiest VM-core edit** — so do it first, in the easiest debugging environment, before it's on the critical path under a headset. It helps both targets:
- Interim (VM-on-main): **survival** — a send-free loop that can't preempt freezes the run loop → watchdog kill.
- Host-bridge (VM-as-guest, off-main): **responsiveness** — no watchdog risk, but a send-free loop still freezes Self's scheduler + inbound event draining + doorbell. Same fix.

## Ordered sequence

1. **Backward-branch preemption** — VM-core, macOS, no graphics/host dependency.
   `do_branch_code` (`vm64/src/any/interpreter/interpreter.cpp:417`): on a backward edge, run the prologue's exact interrupt path — `fastPreemptionCheck()` (`aarch64/runtime/runtime_aarch64.hh:81`) → `SaveNonVolRegsAndCall0(interruptCheck)` inside the `setjmp(_nlr_jmpbuf)`/`have_NLR_through_C()` guard mirrored from `interpreter.cpp:377-384`. Backward-only (`target_PC <= pc`) to keep overhead off forward branches. Test: a pure-arithmetic `whileTrue:` with no sends must keep the UI live. *(Detail: `IOS_INTERIM_PORT_PLAN.md` Phase 2.)*

2. **Split `SELF_COREGRAPHICS` out of `QUARTZ_LIB`** — shared build prerequisite.
   `QUARTZ_LIB` conflates CoreGraphics *drawing* with NSWindow/AppKit *windowing*; headless/visionOS slices therefore have no drawing prims (host-bridge build blocker, `AVP_FRAMEBUFFER_RENDERING.md:207`, `vm64/cmake/mac_osx.cmake:14`). Decouple so CG wrappers + an IOSurface offscreen compile without AppKit.

3. **Shared IOSurface render contract** — consumed by either path.
   `MakeIOSurfaceOffscreen(w,h) -> {IOSurfaceRef, CGContextRef}` + a BGRA8 IOSurface-backed `pixmap`-canvas leaf (sibling of `quartzBufferCanvas`, `objects/graphics/quartz.self:6541`; `abstractPixmapCanvas` is backing-agnostic at `objects/ui2/canvas.self:1059`, so no morph/canvas changes). After this, "Self UI lands in an IOSurface" holds for both consumers.

4. **Host-bridge present path** — macOS first (its own Decision 5).
   SwiftUI `Image` from IOSurface → trivial C++ fill "present test" → real UI2 canvas → doorbell + double-buffer swap → RealityKit textured plane on AVP. Transport (E.1) + workspace unification already proven; the only unbuilt piece is the present path from step 3.

5. **Interim UIKit shell = fallback only; GC-offload dropped.** See insight below.

## Why GC-offload and the UIKit shell drop out

The two hardest interim items vanish in the host-bridge path, because the **guest split is GC-offload done at the app boundary**: the VM already runs off-main on a background thread in SpatialSelf, so during a full GC the main actor keeps presenting the last IOSurface — no watchdog, no display freeze, inbound events queue in the pipe and drain afterward. GC-pause tolerance for free. So interim Phase 3 (offload full GC to a worker thread) is moot under the guest model, and the UIKit-in-VM shell is throwaway. Keep `IOS_INTERIM_PORT_PLAN.md` only as a fallback if the host-bridge present path stalls.

## Bottom line

Across both plans, the only genuinely new VM-core work is **step 1** and the **host-bridge present path**; everything else is build plumbing (step 2) and one shared IOSurface leaf (step 3). Shared regardless of path: 1–3. Divergence: step 4.
