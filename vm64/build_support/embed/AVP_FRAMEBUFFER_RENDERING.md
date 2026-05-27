# Rendering the Self framebuffer on Apple Vision Pro — design & rationale

*The reasoning behind how we get UI2's drawing onto AVP, plus the progress so far.*

Authors: dmu + claude. Last updated 2026-05-26 (branch `AVP-port`).

This is the **"why" document** — narrative and rationale, meant to be re-read months
from now. The terse operational checklist (artifact lists, file:line anchors, test
ladder) lives in [`HOST_BRIDGE_PLAN.md`](./HOST_BRIDGE_PLAN.md); when the two overlap,
that file is the source of truth for *what to type* and this one for *why*.

---

## The problem

SpatialSelf hosts the Self VM on Apple Vision Pro. In UI2, every morph draws itself
onto a **canvas**; we need those pixels to appear in the headset. A general
**host bridge** (Swift ⇄ VM, see the companion doc) carries events and data across the
language boundary. The obvious idea for graphics was: have Self **serialize each canvas
drawing operation** (fillRect, drawLine, drawString, …) and send that stream over the
bridge to Swift, which replays it with native APIs.

That raised the worry that started this whole investigation: **isn't per-operation
serialization too slow?**

The answer reshaped the design. This file records both the answer and the reasoning, so
the decisions don't look arbitrary later.

---

## The key insight: four independent axes

The "is serialization too slow?" question quietly conflated four separate choices:

| Axis | Options |
|---|---|
| **Transport** | pipe / socket · shared memory · in-process call |
| **Vocabulary** | chatty ops · display list · **finished surface** |
| **Renderer** | Core Graphics · SwiftUI `Canvas` · Metal · RealityKit |
| **Packaging** | xcframework · one Xcode project *(resolved — see "Progress")* |

The cost the worry was really about lives almost entirely in **vocabulary**, not
transport. We confirmed by auditing `objects/ui2/canvas.self`: UI2's canvas is
**maximally chatty** — a single redraw is dozens-to-hundreds of immediate-mode
`CGContext` calls, with **no display list** and **no per-window bitmap composition**.
Shipping *those* across the boundary is what would hurt; the transport itself is fine.

Once you separate the axes, the fix is obvious: **change the vocabulary, not the
transport.**

---

## Decision 1 — Serialize the *surface*, not the *ops*

Keep the chatty drawing where it's already cheap, and only share the result.

- Each Self window keeps drawing its hundreds of immediate-mode ops **in-process**, into
  an offscreen pixmap — exactly the cost of today's `CGContext` path, **zero IPC per op**.
- Back that pixmap with an **`IOSurface`**, which is a zero-copy GPU-shareable buffer.
- The bridge pipe carries only a tiny **"window N is dirty" doorbell** frame — never the
  pixels.
- Swift binds the `IOSurface` as a GPU texture and displays it.

**Why this is the right shape:** it collapses "thousands of ops per frame crossing the
boundary" into "one shared texture handle + a one-byte doorbell." The chattiness never
leaves the VM's address space. It also avoids the tempting-but-wrong alternative of
exposing each canvas op as its own VM primitive — that just turns the IPC storm into a
function-call storm.

---

## Decision 2 — A *new* IOSurface-backed pixmap-canvas leaf (not a repoint)

This decision came with a correction worth remembering, because it's a trap.

The first instinct was "just point `abstractPixmapCanvas`'s existing backing store at an
IOSurface." We then **audited the actual backings** and found that none of them can be
repointed:

- **X11 `pixmapCanvas`** (`objects/ui2/canvas.self:1133`) → a server-side `XCreatePixmap`.
  It lives in the X server, not our address space; reading it back is `XGetImage` (a copy).
  Moot on AVP anyway (no X server).
- **Quartz `bufferCanvas`** (`objects/graphics/quartz.self:6541`, via
  `quartzWindow asLayerSize:`) → an opaque **`CGLayer`** (`CGLayerCreateWithContext`,
  `vm64/src/any/prims/quartzPrims.cpp:76`). There is **no `CGLayerGetData`** — it's
  GPU-cached and unaddressable. The *worst* case for zero-copy.
- **ui1-on-Quartz indexed offscreen** (`quartzPrims.cpp:90`, `CGBitmapContextCreate(NULL,…)`)
  → CG-owned and addressable, but **8-bit indexed**, so its blit
  (`BlitIndexedToContext_wrap`) always does a CLUT-expansion copy. Also experimental/off.

**So the design is a new leaf, not a redirect.** Add a sibling to `quartzBufferCanvas`
whose `pixMap`/`gc` is a **true-colour (BGRA8 premultiplied) `CGBitmapContext` over locked
IOSurface memory**:

```c
CGBitmapContextCreate(IOSurfaceGetBaseAddress(s), w, h, 8,
                      IOSurfaceGetBytesPerRow(s), rgbCS, /*BGRA8 premult*/ …);
```

This is a documented, supported Core Graphics pattern: CG draws **straight into the
IOSurface's memory**, and `IOSurface → Metal texture → RealityKit material` is zero-copy
*by design* (that is the entire purpose of IOSurface).

**Why the Self side stays clean:** `abstractPixmapCanvas` exposes `drawable = pixMap`
(`objects/ui2/canvas.self:1059`) and is fully agnostic to what backs it. Morphs draw
through `gc`/`drawable` and don't care. So the new leaf slots in with **zero changes to
the canvas/morph drawing code** — only a new leaf object + one new primitive.

---

## Decision 3 — Exactly one new VM primitive

```
MakeIOSurfaceOffscreen(w, h) -> { IOSurfaceRef, CGContextRef }
```

That's the only genuinely new C primitive the graphics path needs. Everything else
(framing, the doorbell pipe, the canvas leaf) is Self + already-shipping primitives in
`libSelfVM.a`. (Contrast the event/inbound channel, which needed **no** new primitive at
all — see the bridge doc.)

---

## Decision 4 — The VM never calls RealityKit or SwiftUI directly

Two independent reasons, both load-bearing:

1. **RealityKit is not a drawing API.** It's a 3D scene graph (entities, materials,
   components) — there is no RealityKit equivalent of `fillRect`/`drawLine`. The *only*
   bridge from 2D pixels into a 3D headset scene is: **rasterize to a texture, then map
   that texture onto a plane entity** (`UnlitMaterial` + `TextureResource` /
   `DrawableQueue`) positioned in the volume. A Self window becomes a textured quad in
   space. (SwiftUI's `Canvas` view *is* immediate-mode and could even replay a display
   list, but it still outputs a bitmap and re-runs per frame — it's just another path to
   "render to a surface." A flat-panel-in-a-volume first cut may need no RealityKit at
   all — a SwiftUI `Image`/`Canvas` over the IOSurface suffices.)

2. **Threading.** SwiftUI and RealityKit are **main-actor / run-loop bound**, while the
   VM runs *all* Self on one background OS thread with cooperative green threads (the same
   reason the bridge uses `suspendForIO` rather than condvars). A VM primitive that called
   RealityKit/SwiftUI directly would either touch UIKit off the main thread or block the
   green-thread scheduler.

**The cut, therefore:** the VM primitive only **registers an `IOSurface` and rings the
doorbell**. All SwiftUI/RealityKit work lives on the app's main actor. Writing *that thin
handoff* in Swift (via C++↔Swift interop) is fine; writing the *renderer* as a VM
primitive is not.

---

## What's mandatory — but is *not* pixel-copying

The "zero-copy" claim is real, but three things are still required engineering. None of
them is a per-pixel copy; the cost is correctness, not bandwidth:

1. **Format must match the texture** the GPU samples: BGRA8 premultiplied. Do **not**
   reuse the 8-bit indexed path (that one *does* force a CLUT-expansion copy).
2. **IOSurface lock / stride discipline:** `IOSurfaceLock`/`Unlock` around the CPU draw
   cycle; the base address is valid only while locked; use `IOSurfaceGetBytesPerRow`
   (padded for alignment — it is **not** `w * bytesPerPixel`).
3. **Producer/consumer synchronization** — the real work. The VM thread is the CPU
   producer; the main-actor RealityKit is the GPU consumer. Without coordination you get
   tearing. Options: **double-buffer** two IOSurfaces (draw into the back, present the
   front, swap on the doorbell), or a fence / `TextureResource.DrawableQueue` plus the
   IOSurface `use_count`. The "window N dirty" doorbell is what triggers the swap.

---

## Decision 5 — Flat panel first; spatial morphs deferred

The first cut renders each Self window as a **flat textured panel** floating in the
volume (Morphic → IOSurface-backed pixmap → texture on a RealityKit plane, or even a
plain SwiftUI `Image`/`Canvas`). **Truly spatial 3D morphs** (morphs as first-class
RealityKit entities, which needs a Morphic draw-model rewrite) are **deferred** until the
textured panel works. Crucially, the *surface contract is the same either way* — going
spatial later doesn't invalidate the panel work.

---

## Progress so far

What is actually done and verified, versus assumed:

**Done & verified**
- **Backing-store audit** — read the code; confirmed the existing X11/CGLayer/indexed
  backings cannot be repointed, so the new-leaf design is the right one. (2026-05-26)
- **Workspace unification** — SpatialSelf now builds the VM **from source** in the same
  Xcode workspace (cross-project dependency on the CMake VM project), instead of linking a
  prebuilt `SelfVM.xcframework`. Verified by a sim build *and* a real run. This matters for
  graphics because the new `MakeIOSurfaceOffscreen` prim + the BGRA8/IOSurface leaf can now
  be developed and **debugged across the Swift↔C++ boundary in one project**. (committed:
  `self64@c792f3ae`, SpatialSelf `main@12c705d`)
- **The bridge's inbound pump** (events/doorbell transport) is proven end-to-end on macOS,
  including a VM fix so `suspendForIO` actually wakes on a pipe fd. (See `HOST_BRIDGE_PLAN.md`
  → "E.1 result".) The doorbell this design relies on rides that proven channel.
- A **headless macOS `libSelfVM.a`** slice (`configure.sh macos-lib`) exists for a macOS
  host-app harness — useful for developing the present path without a headset.

**Assumed / not yet built (risks to retire)**
- That `CGBitmapContext`-over-IOSurface works cleanly at the Self `grafPort`/pixmap
  representation level (it's a documented CG pattern, but we haven't wired it through the
  Self file/proxy layer yet).
- The lock + double-buffer/fence handshake between the VM thread and the main actor.
- The exact display path for the first cut: RealityKit textured plane vs. SwiftUI
  `Image`/`Canvas`. Decide when building it.

**BUILD BLOCKER discovered 2026-05-26 — CG drawing is gated out of the headless slices.**
All of `vm64/src/any/prims/quartzPrims.cpp` is `#if defined(QUARTZ_LIB)` (line 8) — every CG
wrapper (`CGContextFillRect_wrap`, `CGContextSetRGBFillColor_wrap`, text, etc.). `QUARTZ_LIB`
is set only when `SELF_QUARTZ=ON` (`vm64/cmake/mac_osx.cmake:14`), which the `macos-lib` and
`visionos` slices turn OFF. So the headless VM that the host bridge links has **no CG drawing
primitives at all** — it can create an IOSurface but can't draw UI2 into it. `QUARTZ_LIB`
currently conflates *two* concerns: **(a) CoreGraphics drawing** (needed for the present path)
and **(b) NSWindow/AppKit platform windows** (correctly omitted headless). **The present path's
FIRST task is to split them** — make the CG-drawing wrappers (+ an IOSurface-backed offscreen,
no on-screen window) compile in the headless/embedded build, gated by something like a new
`SELF_COREGRAPHICS` independent of the window code in `quartzWindow.cpp`/`platformWindow`. Only
then can the BGRA8-IOSurface pixmap-canvas leaf actually draw. (The app must also link
`-framework IOSurface` + Metal for the Swift display side.)

---

## Sequencing

1. *(done)* Prove the bridge transport + the idle pump — `HOST_BRIDGE_PLAN.md` E.1.
2. *(done)* Workspace unification — build the VM from source in the app.
3. **E.2** — a SwiftUI button drives the event→doorbell→present loop with a real frontend
   (no graphics yet). This proves the doorbell round-trip end-to-end.
4. **Decouple CG drawing from NSWindows** (the build blocker above) — make the CoreGraphics
   wrappers + an IOSurface-backed offscreen compile in the headless/embedded slices, separate
   from the AppKit window code. *Prerequisite for everything below.*
5. **The present path** *(this document)* — `MakeIOSurfaceOffscreen` prim + the BGRA8
   IOSurface pixmap-canvas leaf + the Swift-side IOSurface→texture→display binding +
   double-buffer/doorbell swap. **macOS first** (MacSpatialSelf, SwiftUI `Image` from the
   IOSurface — no RealityKit needed yet); a trivial C++ fill → display "present test" before
   wiring real UI2 canvas.
6. Later — RealityKit textured plane for AVP; spatial morphs, if/when wanted.

---

## Pointers

- Operational checklist, test ladder, bridge transport: [`HOST_BRIDGE_PLAN.md`](./HOST_BRIDGE_PLAN.md)
- Canvas abstraction: `objects/ui2/canvas.self` (`abstractPixmapCanvas`, `drawable = pixMap`
  at `:1059`; X11 leaf `:1133`); Quartz buffer canvas `objects/graphics/quartz.self:6541`;
  Quartz offscreen prims `vm64/src/any/prims/quartzPrims.cpp` (CGLayer `:76`, indexed `:90`).
- Memory notes (claude): `project_hostbridge_plan`, `project_hostbridge_next_steps`,
  `project_ui1_on_quartz_state`.
