# Host Bridge Plan — SpatialSelf on macOS + AVP

Status: **agreed design, not yet implemented** (as of 2026-05-22, branch `AVP-port`).
Authors: dmu + claude.

**Key revision (2026-05-22):** the pipe transport needs **no VM/glue/prim
changes** — Self already has the pipe/socket/file primitives. The bridge is pure
Self + Swift against the existing `libSelfVM.a`. See section A.

**Key revision (2026-05-26):** two decisions promoted from "deferred" after
auditing the actual UI2 canvas path. (1) **Graphics never serialize the ops —
serialize the surface.** `objects/ui2/canvas.self` is per-op immediate-mode
(`fillRectangle:`→`CGContextFillRect`, etc.); piping those ops would make
chattiness the bottleneck. Keep that chatty drawing in-process into an
`abstractPixmapCanvas` backed by an `IOSurface`; the pipe carries only a "window
N dirty" doorbell. (2) **Drop the xcframework — unify on an Xcode *workspace*
over CMake.** See the new "Graphics present path" and "Build/packaging" sections.

## Goal

Get SpatialSelf running on **both macOS and Apple Vision Pro** by reimplementing
the canvas Self layer for a Swift frontend (SwiftUI and/or RealityKit). The
causality loop must flow: **Swift event → VM primitive → Self → VM primitive →
Swift render.**

## Core decision

Build a **general, frontend-agnostic bridge first**, and prove it with a trivial
payload before committing to any frontend or touching Morphic. The bridge is the
only genuinely novel, hard-to-reverse piece; everything above it (SwiftUI panel,
RealityKit entities, display-lists, scene-diffs) is a replaceable *vocabulary*.

The bridge transports **opaque, length-prefixed byte frames** over **two pipes**
and knows nothing about taps, rectangles, or entities. The vocabulary lives above
it, in Self and in Swift, and can evolve without changing the transport.

### Why pipes + `suspendForIO` (not condvars, not poll loops)

The VM runs all Self code on one OS thread with cooperative green threads. A
primitive that blocks the OS thread (e.g. `pthread_cond_wait`) freezes the whole
scheduler. A busy poll burns CPU. The existing X11 event pump already solved this
correctly — mirror it exactly:

- `objects/graphics/xlib.self:3595` `nonBlockingEventAction:` — loop: if events
  pending, consume one and return; else `file suspendForIO` (which "does a
  select", per `objects/applications/pep/pep_runtime.self:1872`) and yields to the
  scheduler. Zero CPU when idle; other green threads keep running.
- `objects/graphics/eventWatcher.self:128` — the pump: `[quitFlag] whileFalse:
  [ handler event: display nextEvent ]`.

So the bridge's inbound channel is **fd-backed**: the VM `suspendForIO`s on the
event-pipe read fd just like the X11 connection fd. SpatialSelf already proves the
exact plumbing for stdio — see "grounding facts" below.

### Threading invariant (the safety property)

Only the VM thread ever touches oops; Swift only ever moves bytes through the two
pipes. Crossing happens solely at the primitive boundary. This is consistent with
the timer fix (see [[project_avp_vm_timer]]): waking the VM uses pipe-readability +
the scheduler's select, kept distinct from the `setitimer`→`pthread_kill`
preemption path.

## Causality loop

```
 [Swift main thread]                        [VM thread — owns all oops]
  gesture/tap/key ──write() frame──▶  event pipe ─▶ hostBridge pump (suspendForIO)
                                                          │  _HostBridgeNextEvent
                                                     Self handler runs
                                                          │  _HostBridgePresent:
  DispatchSource ◀──read frame──────  present pipe ◀──────┘
  → main thread → SwiftUI/RealityKit
```

Frame format: 4-byte little-endian length + payload. Trivial-test payload: a tag
byte (+ optional int). That is the entire "vocabulary" for the first milestone.

## Grounding facts (verified, with file:line)

- VM↔native bridge = primitive table + glue. Hand-written glue lives in
  `objects/glue/*_glue.cpp` (model: `xlib_glue.cpp`, `stat_glue.cpp`). Generated
  glue via `objects/glue/primitiveMaker.self`. Glue macros/type-conversions in
  `vm/src/any/prims/glueDefs.hh` (supports `bv`, `bv_len`, `smi`, `bool`, …).
- Glue registration: each glue contributes a `<name>_entries` macro, gated by
  `#ifdef`, included in `vm/src/any/prims/prim.cpp` at **two** spots — declarations
  (~line 19, e.g. `stat_entries`) and the table (~line 2408). Add `hostbridge_entries`
  the same way.
- Wrap a raw fd as a Self file for `suspendForIO`:
  `objects/graphics/xlib.self:3482` →
  `file: os_file copyBlockingFd: connectionNumber Name: name`.
  `suspendForIO` defined at `objects/core/abstract_OS.self:1014`.
- Canvas layer (the eventual reimplementation target): `objects/ui2/canvas.self`
  with leaves `xWindowCanvas` / `quartzWindowCanvas` over `abstractWindowCanvas`;
  `abstractPixmapCanvas` does offscreen rendering. Morphic draws via
  `morph drawOn: aCanvas`.
- Embed entry points: `vm64/build_support/embed/self_vm.h` —
  `self_vm_set_io_fds()`, `self_vm_main()`. Library mode = `-DSELF_AS_LIBRARY=ON`
  (default on visionOS/iOS/tvOS), produces `libSelfVM.a` →
  `cmake-build-AVP-framework/Self.xcframework` via `vm64/configure.sh xcframework`.

### SpatialSelf app wiring (repo: `~/code/separatingForInlining/`, workspace `Enchilada.xcworkspace`)

- `@main` `SpatialSelfApp` → `SelfShellView` → `SnapshotStartView` (pick snapshot
  or fresh boot) then `TerminalView`. Currently **text terminal only** — no
  graphics, gestures, or VM callbacks.
- `SpatialSelf/.../SelfVMLauncher.swift:44` runs the VM on a **background**
  `Thread.detachNewThread` named "Self VM"; `:47` `self_vm_set_io_fds(...)`; `:60`
  `self_vm_main(...)`.
- stdio piped via `ReusableViews/.../Terminal_IO_Redirector.swift`: `pipe()` per
  stream; output read by `DispatchSource.makeReadSource(fileDescriptor:)` on a
  background queue, batched to the main thread every 50ms. **The bridge reuses this
  exact pattern.**
- Links `SpatialSelf/Frameworks/SelfVM.xcframework` (xros-arm64 + xros-arm64-sim
  **only — no macOS slice yet**) via `SpatialSelf-Bridging-Header.h` (`#import
  "self_vm.h"`). visionOS-only target. A separate multi-platform `Self_1.xcodeproj`
  exists but SpatialSelf does not use it.

## Artifact list

### A. VM / C++ side (`self64`) — **NONE NEEDED**

The pipe transport requires **zero VM/glue/prim changes**. The VM thread runs
inside the host process and shares its fd table (that is why `self_vm_set_io_fds`
works), so pipes the host creates are usable from Self via primitives that already
ship in `libSelfVM.a`. Do NOT add `hostbridge_glue.cpp`, a `primMaker.hh`,
`prim.cpp` entries, or `self_vm_set_bridge_fds` — the earlier draft of this plan
was over-built. Self drives the pipes with:
- `copyBlockingFd: fd Name: n` (`abstract_OS.self:370`)
- `suspendForIO` (`abstract_OS.self:1014`)
- `readInto: buf Min: min Max: max At: start IfFail:` (`abstract_OS.self:795`) — frames
- `writeFrom: buf Count: count Start: start IfFail:` (`abstract_OS.self:1021`)
- `_CommandLine` (`worldBuilder.self:42`) to learn the fd numbers
- if needed, Self can even make its own pipe/socket: `syscall: sys_pipe`
  (`sys_pipe = 42`, `unix.self`), sockets via `socketServer.self` /
  `_socket_wrap…` (`unixPrims_wrappers.self:438`).

**Conveying the two fd numbers to Self (RESOLVED — both work, no C change):**

The VM **tolerates unknown flags** at both layers, verified:
- C++ `shell.cpp:90-202`: `OS::opterr=0` then `if (strlen(argv[opt_i]) != 2)
  continue;` skips multi-char flags; no `default` in the switch; **no
  leftover-positional-arg file loading** (only `-f`/`-s` open files); and
  `prog_argv = argv` (`:198`) preserves the pristine argv for `_CommandLine`
  (getopt mangles a *copy*).
- Self `snapshotAction.self:214-218`: unknown args → `warning: '… ignored'` +
  skip; never fatal.

**Key enabler:** `processCommandLine` runs automatically on every snapshot boot —
it is registered as a post-read message at file-in (`snapshotAction.self:72-80`,
`addPostReadMessage: … Selector: 'processCommandLine'`) and sent by `postRead`
(`:234`). It walks `_CommandLine` via `argDict` (`:289`), default = warn+skip. So a
custom flag has a first-class boot hook that runs **in Self, after the world is
live**.

Two viable mechanisms:
1. **Custom arg (PREFERRED — for the test and the durable design).** Host passes
   `--bridge-event-fd N --bridge-present-fd M` (and/or `--bridge-self-test`).
   Register via `argDict at: … Put: …` (`:182`) or `addPostReadMessage:` (`:131`);
   the action runs at boot and either binds the supplied fds or runs a pure-Self
   round-trip test. Works cleanly under `-s`, automatable, control stays off the
   REPL's stdin. `hostBridge` can also read values with `valueForCommandLineFlag:`
   (`worldBuilder.self:48`) independent of `processCommandLine`.
2. **stdin bootstrap line (works, but awkward under `-s`).** The VM main loop is a
   REPL over stdin (`shell.cpp:226`, `:250-265`). Boot is *sequential* — snapshot
   loads, `postRead` runs, THEN the REPL reads stdin — so writing
   `hostBridge eventFd: N PresentFd: M Start.` into the stdin pipe does get
   evaluated. But it requires post-boot timing choreography, `hostBridge` already
   in the snapshot, and the C++ `VM#` REPL to be the stdin consumer. Fine for a
   quick manual poke; not for an automated test.

Recommendation: **custom arg** for both the trivial test and durable conveyance.

The only place a C primitive genuinely returns is the **future** heavy-present
path (bitmaps/display-lists over shared memory / `IOSurface` — the `IOSurface`
handle needs a small prim). Deferred; see "Scaling note".

### B. Self image side (`self64`) — the whole bridge lives here
6. `objects/hostBridge.self` (new, model `eventWatcher.self` + `nonBlockingEventAction:`):
   - fd numbers from `_CommandLine` (or stdin bootstrap — see A).
   - `eventFile: os_file copyBlockingFd: <eventFd> Name: 'hostBridgeEvents'`;
     `presentFile: os_file copyBlockingFd: <presentFd> Name: 'hostBridgePresent'`.
   - `nextEvent`: read a frame — `eventFile suspendForIO` until readable, then
     `readInto:Min:Max:At:IfFail:` to pull the 4-byte LE length, then the payload,
     looping on short reads. (Framing is done in Self; no prim.)
   - `present: bv`: write 4-byte LE length then payload via
     `presentFile writeFrom:Count:Start:IfFail:`.
   - `watch`: `[quitFlag] whileFalse: [ handler value: nextEvent ]`.
   - Trivial handler: decode tag → bump counter → `present:` encoded count.

### C. Swift / app side (`separatingForInlining`)
7. `ReusableViews/.../HostBridge.swift` (new, shared package) — create 2 pipes,
   call `self_vm_set_bridge_fds(...)` next to `set_io_fds` in `SelfVMLauncher.swift`,
   expose `postEvent(_:)` (`write()` a frame) and a `DispatchSource` on the present
   fd that decodes frames → `@Observable` model (same as stdout redirector).
8. `ReusableViews/.../BridgeTestView.swift` (new, shared) — `Button("tick")` +
   `Text("\(model.count)")`. In the package so both apps share one source.
9. macOS app target in the workspace linking `SelfVM` + `ReusableViews`, hosting
   `BridgeTestView`. SpatialSelf stays the AVP host.

### D. Build integration
- **No VM source build needed** — the existing `libSelfVM.a` already exposes every
  primitive used. You iterate in Self + Swift only.
- Image — file `hostBridge.self` into the test **snapshot** (rebuild the image, not
  the VM).
- `vm64/configure.sh xcframework` (add a slice preset in `CMakePresets.json`) —
  add a **macos-arm64 slice** (currently xros + xrsimulator only) for the macOS
  host app. (VM source unchanged; this is just another slice of the same code.)

## Test ladder (E) — trivial → real, each isolating one risk

1. **Pure-Self test on the Mac CLI**, launched by a custom arg — no Xcode, no
   Swift, no C harness, no stdin choreography. Register `--bridge-self-test` in
   `argDict` (runs at boot via `processCommandLine`); the action makes its own pipe
   (`syscall: sys_pipe`) or socketpair, forks a writer process and a reader process
   that `suspendForIO`s + `readInto:`s, asserts the round-trip + framing, prints
   PASS/FAIL, exits. Run: `Self -s world.snap --bridge-self-test`. Proves the pump
   and frame codec in isolation, automatably. **Do this first.**
2. **SwiftUI button on macOS.** Real app creates the pipes, passes fd numbers in,
   `postEvent` → Self pump → `present:` → `DispatchSource`→main hop updates a label.
   Proves host-side pipe ownership and the thread hop.
3. **Same shared view on AVP.** Proves it on device by construction.

Pass rung 3 ⇒ the general bridge is real; flat-vs-spatial becomes a pure vocabulary
choice on top of a trusted transport.

## E.1 result (2026-05-26) — codec PROVEN; idle pump BLOCKED on a stdin-only `selectInto:`, then FIXED (option 1)

Ran a pure-Self E.1 on the macOS Debug CLI (`Self -s A.snap`, full boot — see "execution
context" below). Verified empirically:

- **Transport + framing: PROVEN.** A `socketpair(AF_UNIX, SOCK_STREAM)` made from Self via
  `os syscall: 135 …` (Darwin `SYS_socketpair`; `pipe`/42 is unusable — Darwin returns the
  2nd fd in a register a scalar `syscall:` drops), both fds wrapped with `os_file copyFd:Name:`,
  a 4-byte-LE length + 300-byte payload written and read back byte-exact. **Zero VM changes** —
  `socketpair` rides the existing `_SyscallWith:And:` (smallInt args pass by value:
  `glueDefs.hh:417 any_cnvt`). Synchronous test (`/tmp/hbE1b.self`) prints `RESULT: PASS`.
- **The idle `suspendForIO` pump: DOES NOT WORK on Darwin (macOS *and* AVP).** A forked reader
  blocking on `readInto:` (→ `suspendIfAsync` → `suspendForIO`) never wakes when another green
  thread writes, even though SIGIO is correctly armed (`copyFd:` → `setAsync`: `bsd fcntls
  f_setown=6`, `fasync=64`, owner=`getpid` — all match the SDK) and the VM installs a SIGIO
  handler (`sig_unix.cpp:96`, `_map[SIGIO]=sigio`). **Root cause:** `macOSGlobals os
  selectInto:` (`objects/core/macOS.self:307`) is a 1999 stub — `"Could only stdin for now --
  dmu 6/99"` — that ignores every fd and always reports only **stdin (fd 0)** ready. So SIGIO
  fires → scheduler `sigio` (`scheduler.self:920`) calls the stub → it signals stdin's
  semaphore, never our fd's → the reader sleeps forever. The real `selectInto:` exists in the
  generic `unix` traits (`unix.self:3013`, via `basicSelectInto:`) but macOS overrides it, and
  the C primitive (`select_read_wrap`) exists only in the 32-bit `vm/src/`, **not in `vm64/src/`**.

**This falsifies two load-bearing premises of this plan:** that the inbound channel can "mirror
the X11 `suspendForIO` pump exactly … zero CPU when idle," and that the bridge needs **zero VM
changes**. On Darwin, `suspendForIO` wakes only for stdin. (X11 likely sidesteps this — its
events arrive via the Quartz/Cocoa source or `XPending` polling, not the scheduler's select;
*inferred, not yet verified*.)

**Fix options (decide before E.2):**
1. **Implement real select in `vm64` + drop the macOS override (RECOMMENDED).** Port
   `select_read_wrap`/`basicSelectInto` from `vm/src/unix/prims/` to `vm64`, and delete the
   `macOS.self:307` stub so Darwin uses the generic `unix selectInto:`. A bounded VM change that
   fixes the pump for the bridge *and* any other fd; the right durable fix. (Revises the
   "zero VM changes" claim — that holds only for transport+framing, not the idle pump.)
2. **Polling pump, zero VM change (stop-gap).** The bridge green thread polls its fd with
   non-blocking `basicReadFile … IfFail:` + `process this yield` between tries. Works today;
   costs CPU and latency; not "zero CPU idle." Acceptable only for low-rate events.

**Execution context (also a finding):** REPL/`-f` code runs *in the scheduler process*
(`process.self:239`, `scheduler inScheduler` true) and **cannot yield or block cooperatively**
(`error: 'cannot yield in scheduler'`); forked work never gets a turn under `-p`. The test must
run on **full boot** (no `-p`), where prompt/`postRead` code runs as an ordinary process that
can fork+yield. This matches the plan's intent to register `--bridge-self-test` via
`processCommandLine` in `postRead`. Scratch tests: `/tmp/hbE1b.self` (PASS, sync) and
`/tmp/hbE1.self` (async, hangs on the stub).

### FIXED via option 1 (2026-05-26) — verified, async pump PASSES

Implemented and **verified** (`/tmp/hbE1c.self` → `RESULT: PASS`): a forked reader blocking on
`readInto:` (→`suspendForIO`) now **wakes** when a peer green-thread writes, and round-trips the
300-byte payload byte-exact. Two changes:
1. **`select_wrap` (`vm/src/unix/prims/unixPrims.cpp`, shared into `vm64` via the
   `vm64/src/unix`→`vm/src/unix` symlink).** Build the read fd_set from **every currently-valid
   fd in `[0, maxFiles)`** (`fcntl(fd, F_GETFL) != -1`) instead of only the global `activeFDs`
   (which holds only fds opened via `open_wrap`/`socket_wrap` — never a raw `socketpair`/host fd).
   Read set is a *superset* of the old one, so other platforms are unaffected; write set stays
   `activeFDs`. This is the minimal real fix — no new primitive, no glue regen (the select prim
   was already fully wired in `vm64`; the C++ was *not* missing — `vm64/src/unix` is a symlink to
   `vm/src/unix`, hence the earlier "absent from vm64" was a mis-read).
2. **`objects/core/macOS.self` `selectInto:`** — replaced the stdin-only stub with the real
   `basicSelectInto:` delegation (same as generic `unix selectInto:`).

**Caveat — snapshots:** change (2) lives in the world source, so prebuilt snapshots (`A.snap`)
still carry the stub until rebuilt. The verification installed the override at runtime via
`os _AddSlots:` (`/tmp/hbE1c.self`). To make it permanent: rebuild the snapshot, or have the
bridge boot hook install the `selectInto:` override (and/or file the change in) before pumping.

**Revised claim:** the bridge is zero-VM-change for *transport + framing*; the idle
`suspendForIO` pump needs this one bounded `select_wrap` fix (which also benefits any other
fd-backed waiter, X11 included). Rung E.1 is now fully green: codec + transport + cooperative
idle pump all proven on macOS.

## Scaling note (don't let the contract trap us)

Pipes are right for events forever and for the trivial test. When render payloads
get heavy (bitmaps, display-lists), promote the **present** payload to shared
memory / `IOSurface` and demote the pipe to a doorbell ("frame ready"). The
record-transport contract is unchanged.

## Graphics present path — DECIDED (2026-05-26)

The efficiency fear ("serialize canvas ops to a socket") is misplaced: it lives in
the **vocabulary**, not the transport. Four independent axes were being conflated —
transport (pipe / shm / in-process call), vocabulary (chatty ops / display list /
finished surface), renderer (Core Graphics / SwiftUI `Canvas` / Metal / RealityKit),
and packaging (xcframework / one project). The decisions:

**Serialize the surface, not the ops.** UI2's canvas is maximally chatty — a redraw
is dozens-to-hundreds of immediate-mode `CGContext` calls with no display list and no
per-window bitmap composition (audited in `objects/ui2/canvas.self`). Do **not** ship
those ops across the boundary. Instead:

- Each Self window keeps drawing its chatty ops **in-process** into an offscreen
  `abstractPixmapCanvas` — same cost as today's CGContext path, zero IPC per op.
- Back that pixmap with an **`IOSurface`** → zero-copy GPU texture. (This is the one
  genuinely new C primitive — register/wrap an `IOSurface` handle; everything else
  ships in `libSelfVM.a`.)
- The pipe carries only a tiny **"window N dirty" doorbell** frame, not the drawing.
- Swift binds the `IOSurface` texture to whatever displays it.

This collapses "thousands of ops/frame" into "one shared texture handle + a
doorbell"; chattiness never crosses the language boundary, and per-op VM primitives
(a function-call storm, even in-process) are avoided too.

**Backing-store audit (verified 2026-05-26 — the zero-copy claim, corrected).** None
of the three existing offscreen backings can be *repointed* at IOSurface memory:
- X11 `pixmapCanvas` (`objects/ui2/canvas.self:1133`) = a server-side `XCreatePixmap`
  — opaque, not in our address space (readback = `XGetImage`, a copy). Moot on AVP.
- Quartz `bufferCanvas` (`objects/graphics/quartz.self:6541`,
  `layer: winCanvas quartzWindow asLayerSize:`) = a **`CGLayer`**
  (`CGLayerCreateWithContext_wrap`, `vm64/src/any/prims/quartzPrims.cpp:76`) — opaque,
  GPU-cached, **no `CGLayerGetData`**; the *worst* case for zero-copy.
- ui1-on-Quartz indexed offscreen (`quartzPrims.cpp:90` `MakeIndexedOffscreen_wrap`,
  `CGBitmapContextCreate(NULL,…)`) — CG-owned but addressable via
  `CGBitmapContextGetData`; however it is **8-bit indexed**, so its blit
  (`BlitIndexedToContext_wrap`, `:111`) always does a CLUT-expansion copy. Also
  experimental/off ([[project_ui1_on_quartz_state]]).

So the design is **a new leaf, not a redirect.** Add a sibling to `quartzBufferCanvas`
whose `pixMap`/`gc` is a **true-colour (BGRA8 premultiplied) `CGBitmapContext` over
locked IOSurface memory**:
`CGBitmapContextCreate(IOSurfaceGetBaseAddress(s), w, h, 8, IOSurfaceGetBytesPerRow(s),
rgbCS, …)` — a documented, supported pattern; CG draws straight into the IOSurface, and
IOSurface→Metal texture→RealityKit material is zero-copy by design. The Self layer needs
**zero changes**: `abstractPixmapCanvas` exposes `drawable = pixMap`
(`objects/ui2/canvas.self:1059`), fully agnostic to the backing. The new C prim
(`MakeIOSurfaceOffscreen(w,h) -> {IOSurfaceRef, CGContextRef}`) is the heavy-present
prim already anticipated above. Mandatory, but **not** pixel-copy cost:
1. Draw in the texture's format (BGRA8 premult) — do **not** reuse the indexed path.
2. `IOSurfaceLock`/`Unlock` around CPU draws; base valid only while locked; use
   `IOSurfaceGetBytesPerRow` (padded, ≠ `w*bpp`).
3. Producer/consumer sync (VM thread = CPU producer, main-actor RealityKit = GPU
   consumer): double-buffer two surfaces (draw back / present front) or a fence /
   `TextureResource.DrawableQueue` + IOSurface `use_count`, or it tears. The "window N
   dirty" doorbell triggers the swap.

**Renderer: rasterize → texture → display; the VM must NOT call SwiftUI/RealityKit.**
RealityKit is a 3D scene graph, not a drawing API — there is no RealityKit equivalent
of `fillRect`/`drawLine`. The only bridge is: rasterize to a texture, then map it onto
a plane entity (`UnlitMaterial` + `TextureResource`/`DrawableQueue`) positioned in the
volume (a Self window → a textured quad in space). SwiftUI's `Canvas` view *is*
immediate-mode and could replay a display list, but it still outputs a bitmap and
re-runs per frame — just another path to "render to a surface"; a flat-panel-in-a-
volume first cut may need no RealityKit at all (a SwiftUI `Image`/`Canvas`).

Both SwiftUI and RealityKit are **main-actor / run-loop bound**, while the VM runs all
Self on one background OS thread with cooperative green threads (the reason this plan
uses `suspendForIO`, not condvars — see "Threading invariant"). So a VM primitive that
calls RealityKit/SwiftUI directly would either touch UIKit off-main or block the green
scheduler. The cut is: the VM primitive only **registers an `IOSurface` / rings the
doorbell**; all SwiftUI/RealityKit work lives on the app's main actor. Writing *that
thin handoff prim* in Swift (via C++↔Swift interop) is fine; writing the *renderer* as
a VM primitive is not.

## Build/packaging — DECIDED (2026-05-26): one workspace over CMake, drop the xcframework

Replace the `SelfVM.xcframework` + symlink + Run-Script coupling (see
[[project_spatialself_vm_coupling]]) with a single Xcode **workspace**
(`Enchilada.xcworkspace` already exists) that references the **CMake-generated VM
Xcode project** as a target. The app links the VM target directly inside the
workspace — no prebuilt framework.

**Keep CMake as the source of truth for the VM build — do not hand-translate it into
native Xcode build settings.** Too much load-bearing logic would be lost: generated
glue (`primitiveMaker.self`), the `config.hh` shadowing fix
([[project_xcode_edit_symlink_cmake_fix]]), the heap-above-24GB `MAP_FIXED` constraint
([[project_avp_heap_address]]), arm64-only slices. CMake keeps generating the VM
`.xcodeproj`; the workspace just references it.

Buys: kills the xcframework rebuild dance and stale-binary/wrong-slice pain
([[feedback_vm64_xcode_build_dirs]]); one debugger session steps Swift → C++ glue →
VM (huge for present-path bring-up); in-process C++↔Swift interop — exactly what the
`IOSurface` present path needs (the registering prim, the doorbell, a Swift renderer
the VM can signal). Does **not** change: the threading invariant — VM stays on its
background thread, RealityKit/SwiftUI on main; one project removes *transport*
friction, not the *thread hop* (now `DispatchQueue.main.async` / a lock-free ring
instead of an fd). Caveat: CMake→Xcode regen is already fragile (scheme writes
clobbered by a live Xcode — [[project_vm64_regen_xcode_closed]]); a shared workspace
doesn't worsen it, but still regen with Xcode quit.

### IMPLEMENTED & verified (2026-05-26) — SpatialSelf builds the VM from source

Done for the **visionOS app first** (the headline xcframework drop), verified by a
simulator (arm64) build:
- `SpatialSelf.xcodeproj/project.pbxproj`: removed the `SelfVM.xcframework` link +
  the `build-self-vm.sh` Run Script; added a **cross-project dependency** on
  `cmake-build-AVP-compilation-check/Self.xcodeproj` (file ref + product proxy for
  `libSelfVM.a` + target dependency on `Self`). `SpatialSelf.app` builds with the VM
  compiled from source into `Debug-xrsimulator/libSelfVM.a` and linked — no
  xcframework, no Run Script. (On branch `host-bridge-unify`.)
- Two worries resolved empirically: (1) **device/sim** — one generated VM project
  builds *both* `xros` and `xrsimulator` on demand (Xcode picks the SDK; CMake does
  not bake the sysroot into compile flags), so the xcframework's multi-slice job is
  covered. (2) **UUID stability** — CMake's Xcode UUIDs are deterministic, so the
  cross-project refs survive `configure.sh visionos` regen.
- **arm64 only:** `libSelfVM.a` is arm64-only, so build for an arm64 destination; a
  generic-sim build pulling x86_64 fails to link (same constraint as the old
  arm64-only xcframework slices — not a regression).
- The referenced VM project is **generated, not checked in** — regenerate with
  `vm64/configure.sh visionos`. Documented in `SpatialSelf/README.md` and the
  `visionos` preset description. `Frameworks/SelfVM.xcframework` symlink +
  `scripts/build-self-vm.sh` are now unused.
- For the **macOS host app** path (E.2), added a `macos-lib` preset producing a
  headless macOS `libSelfVM.a` (built/verified, arm64, exports `self_vm_main`).
- Still **not** done: adding the VM project to `Enchilada.xcworkspace` for IDE/source
  visibility (build works without it); a real **run** (only a build is verified).

## Sequencing (2026-05-26)

Explicit order — the two new decisions reinforce, not replace, test ladder E:

1. **E.1 first: the pipe round-trip on the Mac CLI.** Needs zero build changes;
   isolates the one novel, hard-to-reverse piece (pump + frame codec + scheduler
   interaction).
2. **Then the workspace unification** (drop the xcframework — see "Build/packaging").
   Its place is *exactly here*: after E.1, before E.2 and the present path — so
   cross-language debugging and in-process `IOSurface` are ready when the Swift app
   and present path need them. Not before E.1: E.1 gains nothing from it.
3. **Then the `IOSurface` present path** (the new true-colour pixmap-canvas leaf +
   the `MakeIOSurfaceOffscreen` prim).

Principles that hold throughout:
- The pipe stays the event/doorbell transport (low-volume; the `suspendForIO` design
  is right).
- Graphics serialize the *surface*, never the ops (in-process pixmap → `IOSurface` →
  texture).
- SwiftUI/RealityKit stay on the app's main actor, displaying a texture; the VM only
  signals.

## Open decisions (deferred, reversible)

- **AVP destination — first cut decided, spatial deferred:** the present-path
  decision (in-process pixmap → `IOSurface` → texture) lands on the **flat panel**
  first (reuse Morphic via `abstractPixmapCanvas`, render offscreen → texture on a
  RealityKit plane or a SwiftUI `Image`/`Canvas`). Truly spatial 3D morphs
  (RealityKit entities + Morphic draw-model rewrite) stay deferred until the textured
  panel works — the surface contract doesn't change when we get there.
- **macOS path:** unify on the new canvas (retire X11/Quartz) vs keep old macOS UI
  and build new for AVP only. Still open.
- **First implementation scope (proposed):** A + B + E.1 only — VM-side bridge
  provable on the CLI build — before touching Xcode/Swift. The workspace unification
  (see "Build/packaging") is the next milestone after E.1, ahead of the heavy
  `IOSurface` present path.

## Related memory

[[project_avp_heap_address]] · [[project_avp_vm_timer]] ·
[[project_avp_timer_wrong_thread]] · [[project_spatialself_sim_arch]] ·
[[feedback_shorter_branch_first]]
