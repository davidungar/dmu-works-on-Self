# Claude memory export — self64 / AVP-port

Exported 2026-05-27 from /Users/ungar/.claude/projects/-Users-ungar-self-vms-OurSelf-self64/memory
Snapshot of the agent persistent memory: the MEMORY.md index followed by every entry file.

========================================
## INDEX (MEMORY.md)
========================================

- [Shorter branch first](feedback_shorter_branch_first.md) — in #if/#else and if/else, put the shorter branch first; flip the condition.
- [Be precise](feedback_be_precise.md) — verify primitives/APIs against source before asserting (don't trust stale file:line or sub-agent summaries); avoid ambiguous qualifiers like "early".
- [Repo flow & AVP-port home](project_repo_flow_no_claude_upstream.md) — AVP-port lives in davidungar/dmu-works-on-Self (remote `dmu-works-on-Self`, renamed from `myfork`, parent=OurSelf-Systems); Claude code OK there & in origin but NEVER in russellallen/self; David has read-only on origin.
- [AVP heap above ASLR](project_avp_heap_address.md) — Self VM heap/code on visionOS must stay above 24GB or MAP_FIXED clobbers ASLR'd system frameworks (PAC fault in libobjc readClass).
- [AVP VM timer (delivery perfect, still slow)](project_avp_vm_timer.md) — dedicated VM-owned timer thread fix MEASURED on AVP: delivery is perfect (nonvm_ticks=0), VM thread never stalls (max gap ≤46ms), so the 0.5s hangs are host/OS scheduling contention from timer CPU load, NOT the signal path. `-t` still needed. Live SELFTIMER instrumentation uncommitted in itimer_unix.cpp + interruptedCtx_unix.cpp.
- [AVP timer wrong-thread (confirmed+fixed)](project_avp_timer_wrong_thread.md) — instrumentation proved the timer signal is delivered to a non-VM thread (the cause behind -t); the diagnostic guard became the forwarding fix.
- [SpatialSelf sim arch](project_spatialself_sim_arch.md) — libSelfVM.a is arm64-only; SpatialSelf sim builds need an arm64 visionOS-26 sim, x86_64/generic destinations fail to link.
- [SpatialSelf↔VM coupling](project_spatialself_vm_coupling.md) — SpatialSelf links the VM via a symlink to self64/cmake-build-AVP-framework/SelfVM.xcframework + a Run Script phase calling configure.sh xcframework; renaming the VM build dir/script breaks both.
- [Host bridge plan](project_hostbridge_plan.md) — general fd-backed Swift↔VM bridge for SpatialSelf on macOS+AVP; full doc at vm64/build_support/embed/HOST_BRIDGE_PLAN.md. E.1 DONE/committed (pump fix); decisions: serialize the surface not ops, workspace over CMake.
- [Host bridge NEXT STEPS](project_hostbridge_next_steps.md) — resume-here handoff: E.1 green & committed (a3ab2dbf), next = workspace unification (disturbs concurrent sessions — be careful) then E.2 SwiftUI button.
- [NLR interpret() return](project_nlr_interpret_return.md) — FIXED window-close crash: 64-bit interpret() must return NLR_result_from_C() (not interp.top()) when have_NLR_through_C(), or badOop arrives at unwind_protect as a stale real oop.
- [X11 clipboard via NSPasteboard](project_x11_clipboard_nspasteboard.md) — X11 windows now route copy/paste through the native Mac pasteboard (not X cut buffers, which XQuartz doesn't bridge); macOS-only delegation to `quartz window` in xlib.self.
- [X11 cross-window drag works](project_xdrag_x11_works.md) — ui2 drag-between-windows isn't broken; needs a VM built with SELF_X11=ON (default since 0a9c2a10). Stale X11-off binary lacks grab glue → handoff fails.
- [X copy via editor world](project_x_copy_editor_world.md) — copy-from-X→Mac broke two ways: copy_cmd used the global `desktop` world (skips pasteboard when editing in an X world) — FIXED in 4 sites; and XQuartz key-equivalents swallow Cmd-C so Self never sees it — turn that off for Cmd-keys (incl. future Cmd-M) to reach Self.
- [vm64 Xcode build dirs only](feedback_vm64_xcode_build_dirs.md) — build/run vm64 via the Xcode dirs (regen with vm64/cmake-xcode.sh); never a redundant plain-cmake build-debug dir (caused running a stale binary).
- [Comment attribution](feedback_comment_attribution.md) — end inserted comment blocks with `// -- claude & dmu <month-number>/<year>` (house style).
- [Window reincarnation backend](project_window_reincarnation_backend.md) — snapshot reopen forced Quartz on mac; fix honors each window's X/Quartz backend with a Quartz fallback. Committed e6af909e (was 55610719) on AVP-port (atop the pre-2020 classic-world import).
- [Regen vm64 with Xcode closed](project_vm64_regen_xcode_closed.md) — cmake-xcode.sh's two-step scheme write (CMake then fix-xcode-paths.py) gets clobbered by a live Xcode; regen with Xcode quit.
- [X horizontal scroll](project_x_horizontal_scroll.md) — X two-finger horizontal scroll = buttons 6/7 -> wheelMovedInX arm in xEvents.self. Committed 6951ced6 (was ea82e1ab) on AVP-port.
- [Xcode edit-symlink CMake fix](project_xcode_edit_symlink_cmake_fix.md) — "cannot edit in Xcode" fixed in vm64/CMakeLists.txt (realpath the source lists; keep include dirs on vm64/src so 64-bit config.hh shadows). Survives ZERO_CHECK regen.
- [X11 fallback != build regression](project_x11_fallback_not_build_regression.md) — "No X11/XQuartz display, falling back to Quartz" means XQuartz not running (bare :0 wont autostart it), not a missing-X11 build.
- [Copyright audit](project_copyright_audit.md) — copyright notices in files AVP-port changed since GitHub merge-base 2aeaaa98; full report in repo-root COPYRIGHT_AUDIT.md.
- [ui1-on-Quartz state](project_ui1_on_quartz_state.md) — ui1 INTERACTIVE on Quartz: colour render, mouse+keyboard (point-to-type), caret, resize, body drag committed on AVP-port. Session 4: plane_mask/acetate DONE (2 masked byte-level VM prims + GC plane-mask/raster-func state on quartz context + withMaskedGC:Do: scratch+merge for masked fillPolygon; fixes during-drag artifacts incl. the motion-blur trail) — committed 7f5b2899 LOCAL on AVP-port (not pushed), verified live by David. ui1quartz.snap rebaked. NEXT: masked CG lines/arcs/strings (arrows, XOR) via same hook; stipple; menus/dblclick/close untested. Test: RelWithDebInfo, ONE window + osascript activate, manual clicks (no Accessibility for synth), beware ghost windows.
- [Leave imported & unaltered files alone](feedback_leave_imported_unaltered.md) — don't mass-edit files that are neither in GitHub nor actually altered by us (e.g. imported classic-Mac world).
- [Read-permission: offer extension](feedback_read_permission_offer_extension.md) — keep the curated per-extension Read allowlist; when a Read prompt fires for a new type, offer to add Read(**/*.<ext>), never a blanket Read.


========================================
## feedback_be_precise.md
========================================

---
name: feedback_be_precise
description: Be precise — verify against source before asserting; avoid ambiguous qualifiers that force clarifying rounds.
metadata: 
  node_type: memory
  type: feedback
  originSessionId: 2c1100ab-b871-4bfc-ba2d-b2e365a2f403
---

David told me to "BE MORE PRECISE." Triggered by two imprecisions in the host-bridge
design discussion: (1) I wrote the IOSurface present path would "point
`abstractPixmapCanvas`'s backing store at an IOSurface" — wrong; the existing backings
(X11 server pixmap, opaque Quartz `CGLayer`, indexed CG-bitmap) can't be repointed, so
it must be a NEW leaf. (2) I used the hedge word "early" for sequencing the workspace
unification — ambiguous (early relative to what?), which forced a clarifying round.

**Why:** imprecise technical claims and vague words cause rework and back-and-forth;
David values exactness.

**How to apply:** verify primitive/API signatures and behavior against actual source
before stating them as fact (file:line refs in memories/docs may be stale; sub-agent
summaries are not verification). Label what is verified vs assumed. Avoid relative or
ambiguous qualifiers ("early", "soon", "should be fine") — give explicit ordering and
conditions instead ("after E.1, before the present path"). See [[project_hostbridge_plan]].


========================================
## feedback_comment_attribution.md
========================================

---
name: feedback_comment_attribution
description: "Annotate comments I insert with a trailing \"-- claude & dmu <month-number>/<year>\" line."
metadata: 
  node_type: memory
  type: feedback
  originSessionId: bb05c565-39ea-47df-97b6-ab016f0a8b30
---

When inserting comments (especially explanatory comment blocks) into this codebase, end them with an attribution line:

```
// -- claude & dmu <month-number>/<year>
```

e.g. `// -- claude & dmu 5/26` for May 2026. Use the numeric month and 2-digit year.

**Why:** house style in the Self VM tree — existing examples like `vm64/src/any/os/quartzWindow.mm:41` (`-- dmu & claude, 5/26`); the user curates these to mark authorship/date of inserted commentary.

**How to apply:** add the attribution to multi-line explanatory blocks I add (brief one-line descriptions under an already-attributed section header don't each need it). Convert relative dates to the actual current month/year. Related working conventions: [[feedback_vm64_xcode_build_dirs]], [[feedback_shorter_branch_first]].


========================================
## feedback_leave_imported_unaltered.md
========================================

---
name: feedback-leave-imported-unaltered
description: "General rule for the self64 cleanup/copyright work — don't touch files that are neither in GitHub nor altered by us."
metadata: 
  node_type: memory
  type: feedback
  originSessionId: ad94053c-15d3-4b01-a81f-b95845970162
---

General rule for self64 housekeeping (copyright normalization, etc.): leave a file
alone if it is BOTH (a) not in the GitHub repo (`origin/master`) AND (b) not actually
altered by us. Only act on files we changed or that exist upstream.

**Why:** the AVP-port branch imported a huge pre-2020 classic-Mac object world
(~700 files). The user does not want those imported-but-untouched historical files
mass-edited (e.g. blanket-rewriting their Sun/Stanford headers to AUTHORS) — that
changes provenance of code we never worked on. Bulk normalization should be scoped
to our own work.

**How to apply:** "altered" means a content edit, NOT a rename or the wholesale
import commit. To find in-scope files: among files only in our tree, keep only those
touched by a non-import commit with a real content change. Worked example (copyright
task): of 453 imported files with copyright, 433 were import-once/never-edited and
19 were rename-only (`allUs copy`->`allUs`) — all left alone; only
`objects/graphics/ui1OnQuartzHacks.self` (edited by graphics commit 210a34c9) was in
scope. See [[project-copyright-audit]].


========================================
## feedback_no_flood_instrumentation.md
========================================

---
name: feedback_no_flood_instrumentation
description: "When adding debug instrumentation, never flood output — high-rate prints change timing and hide the bug."
metadata: 
  node_type: memory
  type: feedback
  originSessionId: 76323835-71f5-42b6-8286-7b7fb169ec6a
---

When instrumenting a runtime bug, do NOT add logging that fires at high frequency (e.g. per-signal in a ~200/s handler). Flooding output both buries the signal and, worse, perturbs timing enough that the bug stops reproducing (probe effect).

**Why:** A per-forward `lprintf` ×2 in `forwarded_to_self_thread` serialized on the print lock and reshaped the timing the crash depended on — "changes timing too much, cannot reproduce."

**How to apply:** Prefer zero-I/O capture — store into `volatile` globals / a small ring buffer and read them from lldb after the stop. If you must print, gate to the first occurrence or only the interesting (rare) branch, never every iteration. See [[project_avp_vm_timer]], [[project_avp_timer_wrong_thread]].


========================================
## feedback_read_permission_offer_extension.md
========================================

---
name: feedback-read-permission-offer-extension
description: "When a Read permission prompt fires for a new file type, offer to add that extension to the allowlist"
metadata: 
  node_type: memory
  type: feedback
  originSessionId: f649341f-dfca-458a-b858-7a4da8bdc7b4
---

David keeps a curated per-extension `Read(**/*.ext)` allowlist in `~/.claude/settings.json` (C/C++/ObjC/Swift/.log) rather than a blanket `Read` rule — he rejected collapsing it to a catch-all `Read`.

**Why:** he wants reads to stay opt-in by file type, not wide-open.

**How to apply:** whenever a Read permission prompt fires for a file type NOT already in the allowlist, offer to add `Read(**/*.<ext>)` to the `permissions.allow` array in `~/.claude/settings.json`. Don't add a blanket `Read`.


========================================
## feedback_shorter_branch_first.md
========================================

---
name: feedback-shorter-branch-first
description: In
metadata: 
  node_type: memory
  type: feedback
  originSessionId: 052e4000-c836-43d0-b5db-e8851d0cad93
---

When writing `#if/#else` (and analogous `if/else`) blocks where one branch is noticeably shorter than the other, put the shorter branch first and flip the condition (negate it) accordingly.

**Why:** The user prefers this for readability — short branch first lets the reader see both branches close together without scrolling, and the longer/more-complex branch reads as the "main" case after the short fast-path. Demonstrated in `vm64/src/any/os/crashDiagnostics.cpp` `print_platform_info`: user rewrote `# if MACOSX && !EMBEDDED { long macOS sysctl block } # else { short uname block }` as `# if !MACOSX || EMBEDDED { short uname block } # else { long macOS block }`.

**How to apply:** When introducing or editing conditional blocks (preprocessor or runtime), check branch lengths. If asymmetric, lead with the shorter one and negate the condition. Applies to all languages, not just C/C++.


========================================
## feedback_vm64_xcode_build_dirs.md
========================================

---
name: feedback_vm64_xcode_build_dirs
description: "For vm64 (Self VM) work, build only via the Xcode-generated dirs; do not create plain-cmake build dirs."
metadata: 
  node_type: memory
  type: feedback
  originSessionId: bb05c565-39ea-47df-97b6-ab016f0a8b30
---

For projects under `vm64` (the 64-bit Self VM), build and run **only** via the Xcode-generated build subdirs. As of 2026-05-25 there are three, all driven by the unified preset wrapper `vm64/configure.sh {macos|visionos|xcframework}` (presets in `vm64/CMakePresets.json`): `cmake-build-xcode-macos` (macOS Debug/Release app), `cmake-build-AVP-compilation-check` (visionOS-device fast compile-check, editable), and `cmake-build-AVP-framework` (device+sim slices → `SelfVM.xcframework` that SpatialSelf links). `configure.sh` runs `fix-xcode-paths.py` to keep the `vm64/src` → `vm/src` symlink mirror intact — don't use `cmake -G Xcode` directly, and don't make a plain `cmake -B build-debug` Makefile/Ninja dir. (The old `cmake-xcode.sh` / `cmake-xcode-visionos.sh` / `cmake-xcframework.sh` were consolidated into `configure.sh`, and the dirs renamed from `cmake-build-xcode` / `-visionos-xcode` / `-xcframework`, on 2026-05-25; a redundant `cmake-build-xcode-release` was deleted — Release is just a config in the multi-config `macos` project.)

**Why:** on 2026-05-23 I built a fix into a separate `build-debug` dir, but the user ran the (stale) main Xcode-dir binary and concluded the fix didn't work — it actually did. Two parallel build dirs caused running the wrong binary.

**How to apply:** when building/testing a VM change, build in the appropriate Xcode dir and run *that* binary; never spin up a redundant plain-cmake dir alongside the Xcode one. Related: [[project_spatialself_sim_arch]].


========================================
## project_avp_heap_address.md
========================================

---
name: avp-heap-must-stay-above-aslr
description: Self VM on visionOS must place its MAP_FIXED heap above ~16GB or it corrupts ASLR-placed system frameworks
metadata: 
  node_type: memory
  type: project
  originSessionId: 40abde12-351c-4b4c-a9f2-eb1f816535b7
---

When the Self VM runs embedded inside a visionOS app (SpatialSelf), its heap and
code-zone addresses (`vm64/src/any/memory/spaceSize.hh`) must sit well above
where the OS's ASLR places lazy-loaded system frameworks. visionOS lazy-loads
things like `WritingTools.framework` via `SoftLinking._sl_dlopen` when UIKit
builds its main menu (post-CA-commit). The VM uses `mmap(MAP_FIXED)` which
silently overwrites whatever was mapped at the target address. If the address
collides with a system framework's `__DATA_CONST`, libobjc's `readClass`
later trips a PAC failure (`safe_ro` reading from a corrupted small-int like
`0x21`).

**Why:** The original 8GB heap / 10GB code layout was chosen "above the dyld
shared cache" (~6GB) but didn't account for non-shared-cache framework images
that ASLR can put anywhere in user-space VM.

**How to apply:** Heap addresses for embedded ARM64 Apple platforms now live
at 24GB / 26GB (`HeapStart` / `NMethodStart`). If MAP_FIXED ever starts
failing again on a new visionOS version, run `vmmap <pid>` on a device build,
find an empty range above all framework mappings, and bump the constants
again. Don't ever move them back down to compete with framework ASLR range.

**macOS (non-embedded) arm64, May 2026:** the same MAP_FIXED-collides-with-ASLR
problem also hit the desktop build. The macOS branch used `HeapBase = 32GB`, but
libsystem_malloc's nano/large zones get ASLR-scattered across the ~20-34GB band,
so new-space placement at ~32GB intermittently aborted in `range_is_free`.
Probing showed MAP_FIXED is *rejected* across 64-256GB (a kernel-reserved hole)
but accepted from 512GB up to ~4TB. Fixed by moving macOS arm64 `HeapBase` to
512GB (code at 544GB), well clear of the malloc band. `Tag_Size` only uses the
low 2 bits so 40-bit bases are fine for oop encoding; rSet/card indexing is
HeapBase-relative so `HeapMaxGB` stays 32. Same lesson as visionOS: keep
MAP_FIXED ranges above the OS's ASLR allocations, never compete with them.

Related: [[project-spatialself-architecture]] (if/when written), the
`SELF_AS_LIBRARY` flag enables this whole code path.


========================================
## project_avp_timer_wrong_thread.md
========================================

---
name: project_avp_timer_wrong_thread
description: Confirmed+FIXED why -t was needed on visionOS — setitimer signal delivered to non-VM thread jammed SwiftUI host; now forwarded to VM thread.
metadata: 
  node_type: memory
  type: project
  originSessionId: a9f97c0d-c4ef-4abb-86a9-92f28d862656
---

FIXED 2026-05-21: IntervalTimerTick now forwards stray ticks to the VM thread
via pthread_kill; `-t` removed from SelfVMLauncher.swift. Tested: SpatialSelf
boots to an idle prompt, timer on, no jam. The diagnostic guard below became
the fix. Full writeup: [[avp-vm-timer-needs-kqueue]].


CONFIRMED 2026-05-21 via instrumentation: with `-t` removed, the SelfVM's
`setitimer` timer signal (SIGALRM/SIGVTALRM) is delivered by the kernel to a
NON-VM thread (e.g. SwiftUI's main thread), not the detached "Self VM" pthread.
`IntervalTimerTick` then calls `InterruptedContext::set(scp)` and tries to
preempt that thread's context as a Self green-thread → jams the host.

`setitimer` is process-directed; the kernel picks any thread not blocking the
signal. The VM only blocks via `sigprocmask` on its own thread; SwiftUI threads
never block SIGALRM/SIGVTALRM. So `-t` (`dont_use_any_timer`) is a workaround
that disables preemption + check_events + LRU sweep + compile-rate tracking.

Instrumentation lives in `vm/src/unix/os/itimer_unix.cpp` (self_vm_timer_thread,
itt_vm_ticks/itt_nonvm_ticks, top-of-IntervalTimerTick guard, and the thread
capture in IntervalTimer::enable() as it arms the timer). The guard (return
early on non-VM ticks) doubles as a proof-of-fix. shell.cpp is untouched.

Fix options: (A) kqueue EVFILT_TIMER on a dedicated thread that pthread_kill's
the VM thread (clean, thread-directed); (B) pthread_sigmask block timer sigs on
all non-VM threads so only the VM thread can receive them. See
[[project_avp_vm_timer]].


========================================
## project_avp_vm_timer.md
========================================

---
name: avp-vm-timer-needs-kqueue
description: "Self VM 100Hz setitimer was misdelivered to host threads on visionOS; dedicated VM-owned timer thread (2026-05-25) replaced setitimer on macOS. MEASURED on AVP 2026-05-25 eve: delivery is now PERFECT (nonvm_ticks=0) yet -t still needed -- so the old 'signal storm' theory is WRONG; VM thread never stalls (max gap <=46ms), the 0.5s hangs are host/OS scheduling contention, not the VM signal path."
metadata:
  node_type: memory
  type: project
  originSessionId: 40abde12-351c-4b4c-a9f2-eb1f816535b7
---

The Self VM's 100 Hz interval timer (`setitimer(ITIMER_REAL/VIRTUAL)`, see
`vm64/src/unix/os/itimer_unix.cpp:63`) jammed the SpatialSelf SwiftUI host on
visionOS, so the launcher passed `-t` (`IntervalTimer::dont_use_any_timer`).

**Root cause (confirmed by instrumentation):** `setitimer` is process-directed;
the kernel delivers SIGALRM/SIGVTALRM to any thread not blocking the signal.
The VM ran on a detached pthread while SwiftUI owned other threads, so the tick
usually landed on a non-VM thread, where `IntervalTimerTick` captured that
thread's context as a preemptible Self process and corrupted/jammed the host.
Measured: the MAJORITY of ticks arrive on other threads (forwarded count grew
faster than VM-thread ticks). See [[project_avp_timer_wrong_thread]].

**FIX (implemented & tested 2026-05-21):** at the top of `IntervalTimerTick`,
if `pthread_self()` != the recorded VM thread, `pthread_kill(vm_thread, sig)`
and return; the real handler only runs on the VM thread. The VM thread is
recorded in `IntervalTimer::enable()` (itimer_unix.cpp) as it arms the timer —
the arming thread is by definition the Self-running thread
(`self_vm_timer_thread` / `self_vm_timer_thread_known`); shell.cpp is untouched.
`-t` removed from `SelfVMLauncher.swift`. SpatialSelf now boots to an idle prompt with the timer
on and does NOT jam. **No kqueue needed** — contrary to the earlier hypothesis
in this note, plain `setitimer` + forwarding works.

**Caveats:** POSIX standard signals coalesce, so under heavy cross-thread
delivery some forwarded ticks merge into one VM-thread delivery (fine for a
preemption timer). Validated on the (non-animated) terminal host; heavy
animated GUIs weren't stress-tested. If exact tick fidelity or zero host-thread
interrupts ever matter, block SIGALRM/SIGVTALRM on non-VM threads (the VM does
NOT OS-mask them itself — block/unblock_self_signals is just a bool) or move to
kqueue EVFILT_TIMER.

**UPDATE 2026-05-23 — forwarding is correct but SLOW (the caveat above came
true, even on the non-animated terminal host).** With output redirection
temporarily off, dmu confirmed SpatialSelf "works great with `-t`, very slow
without it." Diagnosis grounded in the code: two process-directed timers at 100
Hz (`itimer_unix.cpp:69-70,79` — `_Real_timer` SIGALRM/ITIMER_REAL + `_CPU_timer`
SIGVTALRM/ITIMER_VIRTUAL) = ~200 signals/sec sprayed across the host's many
threads; each stray tick is bounced to the VM thread via `pthread_kill`
(itimer_unix.cpp:219). Cheap per-tick, but the process-wide signal storm drags
the whole multithreaded app down. The macOS CLI build is fast because it is
single-threaded (every tick already lands on the VM thread; no forwarding).
So `-t` is still required for speed in the embedded host.

**Proposed fix (not yet implemented):** stop using process-directed `setitimer`
in the embedded build; instead run a dedicated VM-owned timer thread that
`nanosleep`s and `pthread_kill`s the VM exec thread directly. Ticks are then
generated on a thread we own and targeted ONLY at the VM thread — zero stray
delivery, zero host-thread peppering. The VM-thread handler path is unchanged
(it already handles pthread_kill'd ticks today via the forwarding branch); the
wrong-thread branch becomes dead. Trade-off: the CPU (virtual) timer becomes
wall-clock — fine for preemption. Diagnostic to confirm first: `itt_vm_ticks`
vs `itt_nonvm_ticks` (itimer_unix.cpp:23-24) are counted but NOT reported
anywhere — add a readout; expect nonvm >> vm in SpatialSelf.

**UPDATE 2026-05-25 — IMPLEMENTED (the proposed fix above).** On macOS
(`TARGET_OS_VERSION == MACOSX_VERSION`, covers Mac + AVP), `IntervalTimer`
no longer calls `setitimer`; each enabled timer owns a thread
(`IntervalTimer::ticker_main`, declared in `itimer_unix.hh`) that `nanosleep`s
the interval and `pthread_kill`s `self_vm_timer_thread` directly — so ticks are
always thread-directed to the VM thread, eliminating the storm and the foreign-
thread delivery. Per-timer state (`ticker_thread`/`ticker_running`/
`ticker_interval_usec`) lives in the instance. The ticker thread blocks all but
fatal signals. Non-macOS keeps `setitimer`. ALSO: both wrong-thread identity
checks (`itimer_unix.cpp` IntervalTimerTick + `interruptedCtx_unix.cpp`
forwarded_to_self_thread) now compare `mach_thread_self()` instead of
`pthread_self()` on macOS — pthread_self() faulted (EXC_BREAKPOINT) on foreign
host threads in signal context (the original crash that triggered this work).
The forwarding branch is now a safety net. Crash fix confirmed by dmu; verify
`-t` can finally be dropped for speed. Possible follow-up: the two stored Mach
ports (`the_self_mach_thread`, `self_vm_mach_thread`) could unify if
`the_self_thread` and `self_vm_timer_thread` are always the same thread.

**UPDATE 2026-05-25 evening — MEASURED on AVP; the "signal storm slows it"
theory is OVERTURNED.** Added SELFTIMER instrumentation (see below) and ran
SpatialSelf without `-t` on device. Findings:
- `nonvm_ticks=0` at idle AND under interaction → delivery is now PERFECT: every
  tick lands on the VM thread, zero forwarding, zero ping-pong. Both
  `record_vm_thread` calls print the SAME thread (pthread 0x16dfaf000 /
  mach_port 0xaf43), so self_vm_timer_thread == the_self_thread here.
- `max_vm_gap` peaks at ~46 ms (mostly 11–23 ms) → the VM thread NEVER goes
  tickless for ~0.5 s. So no timer task (LRU sweep / do_async_tasks) and no
  VM-thread block lasts 0.5 s. The perceived 0.5 s hangs are NOT on the VM
  thread and NOT a long timer task.
- itt_vm_ticks grows ~280–320 per 2 s (vs ~400 = two 100 Hz timers) → ~20–30%
  coalesced; under load the VM thread is busy/often blocking signals.
- ONE anomaly: `SELFTIMER stall: ticker slept 80164us (asked 10000)` — a thread
  that only nanosleeps got descheduled 80 ms, co-occurring with host noise
  (`XPC connection interrupted`, `Trying to convert coordinates between
  different UIWindows`). → SYSTEM/OS scheduling stall, not VM logic.

**New conclusion:** the dedicated-thread fix is healthy. With timers on, the VM's
~300 wakeups/s + per-tick work is CPU LOAD that competes with the visionOS
renderer; under contention even the trivial ticker thread starves and the host's
render/main thread is what visibly hitches (the 0.5 s "hang"). `-t` helps by
removing VM load, NOT by fixing a delivery bug (there is none). Likely host-side
correlation with window/RealityKit/XPC churn.

**Next steps (not yet tried):** (A) one-line A/B — set
`IntervalTimer::use_real_instead_of_cpu_timer = true` (drops the CPU timer → one
ticker, ~100 sig/s, half the per-tick work); (B) correlate freezes with the
`XPC`/`UIWindows` host messages; (C) set QoS on the VM/ticker threads so they
yield to the renderer; (D) lower ticks_per_second for the embedded host.

**UPDATE 2026-05-26 — STEP A WORKED; hangs gone (short test).** Set
`use_real_instead_of_cpu_timer = true` for embedded only, in
`vm/src/any/os/itimer.cpp` gated `#if defined(TARGET_IS_EMBEDDED)`. Confirmed
live on AVP: ONE `record_vm_thread` line (CPU timer dropped), `vm_ticks` halved
(~163/report vs ~280), `nonvm_ticks=0`, and dmu reports **no hangs**. Confirms
the contention hypothesis: the ~0.5s freezes were the two 100Hz timers'
~200 wakeups/s + per-tick work competing with the visionOS renderer; halving it
fixed the felt hangs. Steady-state `max_vm_gap` ~20–25ms (healthy); occasional
boot/early ticker stalls 55–92ms remain but are host turbulence and no longer
translate to felt hangs. STILL TODO: validate under the sustained workload that
previously froze; then decide whether to keep step A as the fix and REMOVE the
SELFTIMER instrumentation (below) before committing. Optional further headroom:
(C) thread QoS, (D) lower ticks_per_second.

NOTE on relinking: the embedded fix only takes effect if SpatialSelf actually
relinks against the rebuilt xcframework — Xcode caches its ProcessXCFramework
extraction and won't re-link just because the inner libSelfVM.a changed (this
silently ran a STALE VM on the first step-A attempt). `build-self-vm.sh` now
touches the libs and clears the XCFramework extraction cache to force it. See
[[project_spatialself_vm_coupling]].

**UPDATE 2026-05-26 — same SELFTIMER stalls now seen on macOS in the MacSpatialSelf
host (host-bridge E.2).** dmu's new macOS bridge app printed `SELFTIMER stall: ticker
slept 60–335 ms (asked 10000); nonvm_ticks=0` — identical signature to AVP (delivery
perfect, the ticker thread is host-starved). **Precise cause:** step A
(`use_real_instead_of_cpu_timer = true`) is gated `#if defined(TARGET_IS_EMBEDDED)`, but
MacSpatialSelf links the **macos-lib** slice (macOS, `SELF_AS_LIBRARY=ON`, NOT embedded),
so it still runs BOTH 100 Hz timers (~200 wakeups/s) inside a multithreaded SwiftUI app —
exactly the contention step A removed on AVP. The macOS *CLI* escapes it only because it's
single-threaded. **Harmless for the bridge** (event-driven via `suspendForIO`; the ticks
round-tripped fine). **Fix if wanted:** widen the step-A gate to also cover the hosted-
library case (e.g. `SELF_AS_LIBRARY` on macOS), halving timer load; secondary: timer-thread
QoS / disable App Nap. (So my first guess of "App Nap" was incomplete — the dominant cause
is the two-timer load reaching the un-step-A'd macOS library.)

**LIVE INSTRUMENTATION (uncommitted, in working tree — remove or gate before
committing):** in `vm/src/unix/os/itimer_unix.cpp` — globals
`itt_max_gap_usec`/`itt_last_vm_tick_usec`; SELFTIMER lprintf in
`record_vm_thread`; a clock_gettime gap probe right after `++itt_vm_ticks` in
`IntervalTimerTick`; and a reporter + ticker-sleep-overrun "stall" detector in
`IntervalTimer::ticker_main`. In `vm/src/unix/runtime/interruptedCtx_unix.cpp` —
SELFTIMER lprintf in `set_the_self_thread`. All gated to
`TARGET_OS_VERSION == MACOSX_VERSION`; compiles for xros (verified via
cmake-build-AVP-compilation-check). Rebuilds into SpatialSelf automatically
(its Run Script → `vm64/configure.sh xcframework`).

Related: [[avp-heap-must-stay-above-aslr]] [[project_hostbridge_plan]] [[project_spatialself_vm_coupling]].


========================================
## project_copyright_audit.md
========================================

---
name: project-copyright-audit
description: Catalog of copyright notices in files AVP-port changed since the GitHub merge-base; full report in COPYRIGHT_AUDIT.md.
metadata: 
  node_type: memory
  type: project
  originSessionId: ad94053c-15d3-4b01-a81f-b95845970162
---

Copyright-line audit of every file branch `AVP-port` added/altered vs the last
commit shared with `origin/master` (GitHub `OurSelf-Systems/self64`): merge-base
`2aeaaa98` "Revert docs/ to match upstream russellallen/self" (2026-05-13), 47
local commits. 1418 files changed (713 A / 672 M / 26 D / 7 T); 1101 contain a
copyright notice; 24 distinct notices.

A generated `COPYRIGHT_AUDIT.md` report existed at repo root but was deleted once
stale (post-restore/deletions). Regenerate from `git diff 2aeaaa98..HEAD` if needed.

Key findings:
- Dominant effect: the classic-Mac import (`7695dbcf`, unify `95d47922`) stamped
  ~750 files with original 1990s–2000s headers — mostly
  `Copyright 1992-2006 Sun Microsystems, Inc. and Stanford University.` and
  `Copyright 2007-2013 IBM.` (Korz).
- That import REMOVED ~430 modern `AUTHORS` headers present at the merge-base
  (`1992-2012`/`-2016`/`-2014`/`-2026`/`2016 AUTHORS`).
- Only human-name notices our diff newly ADDS: `Copyright 2007 David Ungar.` (5
  imported `.app` quartzTemplates.self) and `Copyright 1992-2008 Russell Allen,
  Sun Microsystems, Inc. and Stanford University.` (objects/ui2/canvas.self).
- `Copyright 2024-2026 AUTHORS.` (crashDiagnostics), `Copyright 1989-2026 AUTHORS`
  (VM startup banner, universe.cpp), `Copyright 2007 David Ungar, 2024-2026 Russell
  Allen` (quartzWindow.mm) are in files we modified but were ALREADY at the
  merge-base — inherited from upstream, not authored on this branch.

Regenerate: diff notices via `git diff 2aeaaa98..HEAD`; the report distinguishes
added/removed diff lines from the current per-file inventory.

Remediation (goal: every touched file carries the `Copyright <years> AUTHORS.`
form; names live in legal/AUTHORS):
- DONE — commit `e549dbe0` "Restore AUTHORS copyright lines regressed by the
  classic-Mac import": restored the exact merge-base AUTHORS line in 400 modified
  files that the import had reverted to Sun/Stanford/hybrid (incl. 3 special:
  systemOddballs.self re-inserted a deleted line; init.self + transcendentalTemplates
  .self had 2 copyright lines each). New commit, NOT a rebase-amend of 7695dbcf/
  95d47922 (offered that option).
- DONE — commit `ea150107` "Remove imported backup/duplicate object dirs": deleted
  186 files in objects/applications/{klein.bkup, "allKorz copy", "lyParser copy"}
  (each had a surviving canonical dir). NOT deleted: "allUs copy" (no canonical
  allUs/ exists; user to decide leave/rename-to-allUs/delete).
- WHERE the new files live (all under objects/, ZERO in the C++ VM vm/ vm64/, which
  already matches GitHub): Klein (objects/applications/klein, Self-in-Self VM, ~145,
  all pure Sun), Korz (allKorz + allKorz3/4, hybrid + 8 IBM), other applications
  (asmKit/parseKit/scratch), the Self*.app bundle quartzTemplates (Ungar+Sun).
- DONE — "convert newly-created files to AUTHORS form", scoped by the rule
  [[feedback-leave-imported-unaltered]]: of 453 imported files with copyright, only
  ONE was actually authored/altered by us (objects/graphics/ui1OnQuartzHacks.self,
  graphics commit 210a34c9); the other 433 were import-once/never-edited and 19 were
  rename-only. Commit `45075b34` normalized that one file's hybrid header to pure
  `Copyright 1992-2009 AUTHORS.` All other imported files (Klein, Korz, IBM,
  mine/*, etc.) intentionally left with their original headers.
- Verified: `git diff origin/master HEAD` shows ZERO copyright-line differences for
  files present in both trees (the restore fully reconciled shared files with GitHub).
- Convention to apply on convert: preserve each file's own year range, swap the
  entity to AUTHORS (e.g. `1992-2006 Sun...` -> `1992-2006 AUTHORS.`); touch only
  the Copyright line. Helper scripts: /tmp/classify.py (AUTHORS-ness scoring),
  /tmp/restore.py; data in /tmp/plan.json.
- NOTE: pre-existing uncommitted `[CLIP]` debug logging in objects/glue/xlib_glue.cpp
  and vm64/src/any/os/quartzWindow.mm is the user's, unrelated — keep out of these commits.


========================================
## project_hostbridge_next_steps.md
========================================

---
name: project_hostbridge_next_steps
description: "Resume-here handoff for the SpatialSelf host bridge — E.1 done/committed, next is workspace unification then E.2."
metadata: 
  node_type: memory
  type: project
  originSessionId: 2c1100ab-b871-4bfc-ba2d-b2e365a2f403
---

**Next-session prompt for the SpatialSelf host bridge (branch `AVP-port`).** Read
[[project_hostbridge_plan]] and the in-repo doc `vm64/build_support/embed/HOST_BRIDGE_PLAN.md`
first; full design + E.1 result live there.

**Done & committed (2026-05-26):** E.1 fully green. The fd-backed cooperative pump now works on
macOS — socketpair + 4-byte-LE framing + a blocked `readInto:`→`suspendForIO` reader that wakes on
a peer write, all proven. Root cause was the macOS stdin-only `selectInto:` stub. Commits:
`a3ab2dbf` (fix: `select_wrap` in `vm/src/unix/prims/unixPrims.cpp` watches all valid fds;
`objects/core/macOS.self selectInto:` un-stubbed) and `972e7bee` (the plan doc). Local only — not
pushed.

**Open caveat:** the `macOS.self` un-stub is world source, so prebuilt snapshots (`A.snap`) still
carry the stub until rebuilt. E.1 was verified by installing the override at runtime via
`os _AddSlots:` (`/tmp/hbE1c.self`). To make permanent: rebuild a snapshot, or have the bridge
boot hook install the `selectInto:` override before pumping.

**Workspace unification — DONE & verified (2026-05-26).** SpatialSelf now builds the VM from source
via a cross-project dependency on `cmake-build-AVP-compilation-check/Self.xcodeproj`, dropping the
`SelfVM.xcframework` + `build-self-vm.sh` Run Script. Verified: SpatialSelf.app builds for the
visionOS **simulator (arm64)** with `libSelfVM.a` built per-destination and linked (no xcframework).
Key facts learned: one CMake VM project builds BOTH `xros` and `xrsimulator` slices on demand (Xcode
picks the SDK; CMake doesn't bake the sysroot) — so the device/sim worry was unfounded; the VM is
**arm64-only**, so use an arm64 destination (generic-sim pulls x86_64 and fails to link — not a
regression, same as the old arm64-only xcframework slices). CMake's Xcode UUIDs are deterministic, so
the cross-project refs survive `configure.sh visionos` regen. Also added a `macos-lib` preset
(headless macOS `libSelfVM.a`) for the future macOS host app. **COMMITTED & run-confirmed (2026-05-26):**
`self64` (`AVP-port`) commit `c792f3ae` (`vm64/CMakePresets.json` + `vm64/configure.sh` macos-lib slice +
fixed `visionos` preset desc; HOST_BRIDGE_PLAN.md). `SpatialSelf` repo (toplevel
`~/code/separatingForInlining/SpatialSelf`, IS git; parent `separatingForInlining` is NOT) commit
`12c705d` on `main` (`project.pbxproj` rewire + `README.md`); the temp `host-bridge-unify` branch was
merged ff into `main` and **deleted**. Nothing pushed (all local). David confirmed SpatialSelf **runs**
(launches to the Self prompt) via the "Copy of SpatialSelf" scheme — so the rewire is verified at
runtime, not just build. `SpatialSelf/Frameworks/SelfVM.xcframework` symlink + `scripts/build-self-vm.sh`
remain (now unused).

**E.2 Self half — DONE & verified (2026-05-26).** Wrote `objects/hostBridge.self` (durable bridge
object, modelled on `eventWatcher`: `bindEventFd:PresentFd:`, `nextEvent`, `present:`, trivial
`handleEvent:` counter, `watch` pump, LE framing helpers; file-in style `globals _AddSlots:`, `parent*
= traits clonable`). Verified synchronously on macOS CLI (`/tmp/hbE2test.self` → `RESULT: PASS`: tick →
count 1, tick → count 2). Async wakeup of this same pump already proven by E.1c. **UNCOMMITTED.** Run
the test with: `cat objects/hostBridge.self /tmp/hbE2test.self > /tmp/hbE2all.self; <Self> -s A.snap -f
/tmp/hbE2all.self </dev/null`. Gotchas relearned: the stdin REPL mis-parses big multi-line object
literals (use `-f`); a method with no locals must be `( body )` not `( | body )` (the lone `|` starts a
slots section); forked green threads still don't run from `-f`/REPL scheduler context, so verify
logic synchronously (pre-buffer data so no read suspends) rather than fork.

**E.2 — DONE & committed & RUNTIME-VERIFIED (2026-05-26).** macOS app `MacSpatialSelf` (2nd target in
`SpatialSelf.xcodeproj`, beside renamed `VisionSpatialSelf`) links `libSelfVM-macos.a`, launches the VM,
and the "tick" button round-trips through `hostBridge` (count climbs) — host-side pipe ownership + the
main-actor thread hop, proven with a real SwiftUI frontend. Commits: self64 `AVP-port@dbacd55d`,
SpatialSelf `main@df172ef` (local, not pushed). Swift lives in `SpatialSelf/MacSpatialSelf/` (NOT
ReusableViews — Self-specific): `HostBridge.swift`, `MacSelfLauncher.swift`, `ContentView.swift`
(BridgeTestView). Conveyance that worked: launcher runs `self_vm_main` with `-s A.snap -f
objects/hostBridge.self`, then feeds a boot script over **stdin** (install `selectInto:` override,
`bindEventFd:PresentFd:` with literal fds, fork `watch`). Hard-won gotchas: **App Sandbox must be OFF**
(else `NSHomeDirectory()` is a container, paths fail); GUI-renaming a referenced CMake project renames
the file on disk (desyncs CMake — use the pbxproj `name` attr); a synchronized root group needs
`path = Foo` not bare `name = Foo` (else it sweeps sibling folders into the target). Lib slices renamed
via `SELF_LIB_NAME` (`libSelfVM-macos.a` / `libSelfVM-visionos.a`) so they're unambiguous in one
workspace. Still deferred (not needed): fd conveyance via `_CommandLine` (`--bridge-*` flags currently
ignored — bootScript uses literal fds); `hostBridge` into a snapshot (filed in via `-f` each launch).

**Timer stalls on macOS — FIXED (uncommitted).** MacSpatialSelf printed `SELFTIMER stall` (ticker
slept 60–335ms; nonvm_ticks=0) — host scheduling starving the timer thread, same as AVP. Cause: the
step-A single-timer fix (`use_real_instead_of_cpu_timer`) was gated `#if defined(TARGET_IS_EMBEDDED)`,
but macos-lib is `SELF_AS_LIBRARY` (not embedded) so it ran BOTH 100Hz timers. Widened the gate to
`#if defined(TARGET_IS_EMBEDDED) || defined(SELF_AS_LIBRARY)` in `vm/src/any/os/itimer.cpp` → **no more
stalls** (dmu confirmed). **UNCOMMITTED** — left in the working tree because itimer.cpp also carries the
in-flight step-A + SELFTIMER instrumentation that [[project_avp_vm_timer]] says to decide on/strip
before committing; fold the gate change into that timer-work commit. Next levers if stalls return:
timer-thread QoS (USER_INTERACTIVE), disable App Nap.

**Next milestone = the IOSurface present path (graphics)** — full plan + rationale in
`AVP_FRAMEBUFFER_RENDERING.md` (committed). **FIRST TASK is a build blocker, not the prim:** all CG
drawing wrappers in `vm64/src/any/prims/quartzPrims.cpp` are `#if defined(QUARTZ_LIB)` (set only when
`SELF_QUARTZ=ON`, which the headless macos-lib/visionos slices turn OFF), so the host-bridge VM has NO
CG drawing prims — it can make an IOSurface but can't draw UI2 into it. `QUARTZ_LIB` conflates
CoreGraphics drawing (needed) with NSWindow/AppKit (correctly omitted headless). **Step 4: decouple them**
(e.g. a new `SELF_COREGRAPHICS` gate covering the CG wrappers + an IOSurface offscreen, independent of
`quartzWindow.cpp`). THEN step 5: `MakeIOSurfaceOffscreen` prim (a headless-compiled hand glue like
`objects/glue/stat_glue.cpp`, registered in `prim.cpp`; app links `-framework IOSurface`) → BGRA8
IOSurface pixmap-canvas leaf → **macOS-first** SwiftUI `Image` from the surface (trivial C++-fill
"present test" before real UI2 canvas) → RealityKit plane for AVP later. Pipe = "window N dirty" doorbell.

**Then E.2** (SwiftUI button on macOS, `BridgeTestView.swift` in the shared `ReusableViews`
package): Swift owns the pipes, passes fd numbers to the VM launcher, `Button` tap → event pipe →
VM pump → Self → present pipe → `DispatchSource`→main-thread hop → label. Proves host-side pipe
ownership + the thread hop. **Then E.3** on AVP, then the `IOSurface` present path
(`MakeIOSurfaceOffscreen` true-colour pixmap-canvas leaf).

**How to build/run for testing:**
`xcodebuild -project cmake-build-xcode-macos/Self.xcodeproj -target Self -configuration Debug`;
binary at `cmake-build-xcode-macos/Debug/Self.app/Contents/MacOS/Self`. The pump only works on
**full boot** (NOT `-p`, which runs in scheduler context and can't yield):
`( cat test.self; sleep 12 ) | <Self> -s A.snap`. Scratch tests in `/tmp/`: `hbE1b.self` (sync
PASS), `hbE1c.self` (async PASS w/ runtime override), `hbE1.self` (async, hangs on unmodified
snapshot). No `gtimeout` on this Mac — guard runs with `( … ) & BG=$!; sleep N; kill $BG`.


========================================
## project_hostbridge_plan.md
========================================

---
name: project_hostbridge_plan
description: Agreed plan to get SpatialSelf on macOS+AVP via a general fd-backed Swift↔VM bridge (causality loop); full doc in repo.
metadata: 
  node_type: memory
  type: project
  originSessionId: b072a2d2-ab42-4e6c-ad95-69365c7cb6b0
---

Plan to run SpatialSelf on **both macOS and AVP** by reimplementing the canvas
Self layer for Swift, with causality flowing Swift event → VM primitive → Self →
VM primitive → Swift render. **Agreed design, not yet implemented** (2026-05-22,
branch `AVP-port`).

**Decision:** build a general, frontend-agnostic bridge FIRST and prove it with a
trivial payload before choosing SwiftUI-vs-RealityKit or touching Morphic. The
bridge = two pipes carrying opaque length-prefixed byte frames; vocabulary lives
above it. Inbound (Swift→VM) is fd-backed and the VM waits via `file suspendForIO`
exactly like the X11 event pump (`objects/graphics/xlib.self:3595`), so the green
thread scheduler never freezes and the VM idles at 0 CPU. Outbound (VM→Swift)
reuses SpatialSelf's existing stdout `DispatchSource`→main-thread pattern. Invariant:
only the VM thread touches oops; Swift only moves bytes. See [[project_avp_vm_timer]].

**Key point (revised 2026-05-22):** the pipe transport needs **no VM/glue/prim
changes** — Self already has pipe/socket/file primitives (`copyBlockingFd:Name:`,
`suspendForIO`, `readInto:Min:Max:At:IfFail:`, `writeFrom:Count:Start:IfFail:`,
`_CommandLine`, `syscall: sys_pipe`). The bridge is pure Self + Swift against the
existing `libSelfVM.a`; no VM rebuild. (A C prim only returns later, for an
`IOSurface`/shared-mem present path carrying bitmaps.)

**Why:** the bridge is the only novel, hard-to-reverse part; frontends are
replaceable vocabularies on top.

**E.1 result (2026-05-26 — ran pure-Self on macOS Debug CLI `Self -s A.snap`, full boot):**
(1) **Transport+framing PROVEN, zero VM changes.** `socketpair(AF_UNIX,SOCK_STREAM)` via
`os syscall: 135 …` (Darwin SYS_socketpair; NOT `pipe`/42 — Darwin returns fd1 in a register a
scalar `syscall:` drops), fds wrapped `os_file copyFd:Name:`, 4-byte-LE length + 300-byte payload
round-trips byte-exact (`/tmp/hbE1b.self` → PASS). smallInt syscall args pass by value
(`glueDefs.hh:417`). (2) **Idle `suspendForIO` pump DOES NOT WORK on Darwin (macOS AND AVP).**
A blocked async `readInto:` never wakes on a peer write though SIGIO is armed correctly
(`copyFd:`→`setAsync`, bsd `f_setown=6`/`fasync=64`/owner=getpid) and handled
(`sig_unix.cpp:96`). Root cause: `macOSGlobals os selectInto:` (`macOS.self:307`) is a 1999 stub
("Could only stdin for now -- dmu 6/99") that always reports only stdin ready, so the scheduler's
`sigio` never signals our fd. Real `selectInto:` exists in generic `unix` (`unix.self:3013` via
`basicSelectInto:`) but macOS overrides it, and the C prim `select_read_wrap` is in 32-bit
`vm/src/` only, **absent from `vm64/src/`**. **Falsifies** the plan's "mirror the X11 pump, zero
CPU idle" and "zero VM changes" for the inbound channel. Also: REPL/`-f` code runs in the
scheduler process and can't yield ("cannot yield in scheduler", `process.self:239`); the test
must run on full boot (no `-p`), matching the `processCommandLine`/`postRead` intent.

**FIXED via option 1 (2026-05-26) — async pump verified PASS (`/tmp/hbE1c.self`).** The select
C++ was NOT missing from vm64 — `vm64/src/unix` is a symlink to `vm/src/unix` (same file), so my
"absent from vm64" was a mis-read. Two changes: (1) `select_wrap` in
`vm/src/unix/prims/unixPrims.cpp` now builds the read fd_set from every currently-valid fd in
`[0,maxFiles)` (`fcntl(fd,F_GETFL)!=-1`) instead of only `activeFDs` (which never contains a raw
`socketpair`/host fd) — superset of old read set, write set stays `activeFDs`, so no
cross-platform regression; (2) `objects/core/macOS.self selectInto:` un-stubbed to delegate to
`basicSelectInto:`. Rebuilt Debug VM; a forked reader blocked on `readInto:`→`suspendForIO` woke
on a peer write and round-tripped 300 bytes byte-exact. **Caveat:** change (2) is world source, so
prebuilt snapshots (A.snap) still have the stub until rebuilt — verification installed the
override at runtime via `os _AddSlots:`. Revised: bridge is zero-VM-change for transport+framing;
the idle pump needs this one bounded `select_wrap` fix (also helps any fd-backed waiter, X11
included). E.1 fully green.

**Two decisions promoted from deferred (2026-05-26):** (1) **Graphics serialize the
surface, not the ops.** UI2's `objects/ui2/canvas.self` is per-op immediate-mode
(`fillRectangle:`→`CGContextFillRect`), no display list / no per-window bitmap
compositing — so keep that chatty drawing in-process into a **new** true-colour (BGRA8)
`CGBitmapContext`-over-`IOSurface` pixmap-canvas leaf (NOT a repoint: verified 2026-05-26 the existing
backings can't be reused — X11 pixmap is server-side, Quartz `bufferCanvas` is an opaque `CGLayer` with
no `CGLayerGetData`, ui1 indexed forces a CLUT copy). `abstractPixmapCanvas` is agnostic (`drawable =
pixMap`) so the Self layer needs no changes; IOSurface→Metal→RealityKit is zero-copy. The pipe carries
only a "window N dirty" doorbell; remaining cost is lock + double-buffer/fence, not pixel copy. The
`MakeIOSurfaceOffscreen` prim is the one genuinely new C prim.
RealityKit isn't a drawing API (rasterize→texture→plane entity); SwiftUI/RealityKit
are main-actor bound so the VM must only register/signal, never call them (green
scheduler + off-main rule). (2) **Drop the `SelfVM.xcframework`; unify on an Xcode
*workspace* over the CMake-generated VM project** ([[project_spatialself_vm_coupling]]),
keeping CMake as source of truth (don't hand-translate — preserves generated glue,
`config.hh` shadowing, heap-above-24GB, arm64 slices). Sequencing: E.1 pipe test →
workspace unification → heavy `IOSurface` present path.

**How to apply:** the full design — artifact list (new files A–D), the 3-rung test
ladder (C harness on CLI build FIRST, then SwiftUI on macOS, then AVP), grounding
facts with file:line, and open decisions — is written in the repo at
`vm64/build_support/embed/HOST_BRIDGE_PLAN.md`. Read that to continue. Proposed
first scope: VM-side bridge (A+B) provable via the CLI C harness before any Xcode/Swift.

Related: [[project_avp_heap_address]] [[project_spatialself_sim_arch]] [[project_avp_timer_wrong_thread]]


========================================
## project_nlr_interpret_return.md
========================================

---
name: project_nlr_interpret_return
description: 64-bit interpreter-only NLR/abort propagates via longjmp+return-value chaining; every interpret-return site must substitute NLR_result_from_C().
metadata: 
  node_type: memory
  type: project
  originSessionId: 3a590936-1971-46fa-af71-0db1fab6b714
---

On the x86_64 interpreter-only Self VM (no compiler), an NLR/abort unwinds by `longjmp` to the innermost interpreter's `_nlr_jmpbuf` (per-interpreter member; `interpreter_longjmp_for_NLR` → `continue_NLR_into_interpreted_Self`), then propagates **up through ordinary C++ returns**, with each frame's `do_send_code` calling `continue_NLR()` until a frame's home matches (`reset_have_NLR_through_C`). 32-bit instead uses `ContinueNLRFromC` (return-address patching), which reliably leaves `badOop` on each frame's expression-stack top.

Consequence: any function that returns an interpret result MUST, when `NLRSupport::have_NLR_through_C()`, return `NLRSupport::NLR_result_from_C()` rather than the expression-stack top — the top may be a stale real result computed before the abort longjmp'd in.

**Why:** Fixed the "if not aborting, must have a how frame" crash (`unwind_protect_prim`, oop.cpp) when closing an X window aborts a semaphore-blocked process (`unwind_stack_to_kill_process(badOop)`, home=0). The global `interpret()` (interpreter.cpp ~302) was returning `interp.top()` (a stale real oop) instead of `badOop`; `send_prim` and `handle_return_trap_after_send_if_needed` already substituted correctly.

**How to apply:** If a similar bogus-result/home-mismatch NLR bug appears, audit all sites returning an interpret/send result for the missing `have_NLR_through_C() ? NLR_result_from_C() : ...` guard. Diagnose with `[NLRDBG]` probes in `save_NLR_results`, `continue_NLR`, `start_NLR`, and at the `unwind_protect` check. Related: [[project_avp_timer_wrong_thread]] (the earlier wrong-thread theory here was a red herring).


========================================
## project_repo_flow_no_claude_upstream.md
========================================

---
name: project_repo_flow_no_claude_upstream
description: Repo/remote topology for self64 — AVP-port lives in davidungar/dmu-works-on-Self; Claude code is fine there & in OurSelf-Systems but must NEVER reach russellallen/self.
metadata: 
  node_type: memory
  type: project
  originSessionId: 1ea5f7c9-53de-4576-b5ea-9b016c7ba950
---

Git topology and where Claude-generated code may live:

- **russellallen/self** (remote `russell`) — Russell Allen's pristine upstream (classic 32-bit `vm/`, no `vm64/`). **Claude-generated code must NEVER reach here.** Inbound-only.
- **OurSelf-Systems/self64** (remote `origin`) — the org dev trunk; has `vm64/`. Claude code is allowed here, BUT **David has only read access** (`pull`, no `push`) — he contributes via PRs from his fork, and someone else owns/pushes the curated `origin → russell` PRs (which must stay Claude-free).
- **davidungar/dmu-works-on-Self** (remote `dmu-works-on-Self`, renamed from `myfork` May 2026, public, David owns it) — **the home for the Claude/AVP work.** Its GitHub parent is `OurSelf-Systems/self64` (so the PR button defaults to OurSelf, not Russell), source is russellallen/self. `AVP-port` is pushed here and tracks `dmu-works-on-Self/AVP-port`.

**Flow:** `russell → origin → AVP-port` inbound; `AVP-port → dmu-works-on-Self` (David's fork) for backup/sharing/PRs; PRs go `dmu-works-on-Self → OurSelf-Systems`. The only Claude-free edge is `origin → russell`.

**Notes (5/2026):**
- The old fork `davidungar/russell_allen_self` was **deleted** (it was named after Russell — didn't want AI code under that name — and had the wrong parent). Its only unique branch, `experimental64bit` (David's messy WIP whose fixes were curated into AVP-port — "close enough"), is preserved as a **local** branch at `1255cbb1`.
- GitHub allows one fork per account per network, which is why re-parenting required delete-then-refork.
- Pushing from the sandbox to David's own repo works via one-shot `git -c credential.helper='!gh auth git-credential' push` (his token has push to his own repos but NOT to OurSelf-Systems). Don't persistently run `gh auth setup-git` — he asked to keep it reverted.
- Related ecosystem: OurSelf-Systems also has `self-ci`, `Psyche`/`Psyche-Builder`/`rfds` (a Self hypervisor/OS project), `mfsbsd`; Russell has `Self-VM-Builder`, `klein`, `ourself-objects`. ~38 other russellallen/self forks are unrelated third parties.

**How to apply:** never push or PR to `russell`. Push AVP-port to `dmu-works-on-Self` (the remote, renamed from `myfork`). When asked whether Russell "got there first" or about syncing, treat russell/origin as inbound-only. See [[feedback_comment_attribution]] for the `// -- claude & dmu` tag that marks Claude-authored code.


========================================
## project_spatialself_sim_arch.md
========================================

---
name: project_spatialself_sim_arch
description: SpatialSelf visionOS sim builds need an arm64 visionOS-26 sim; libSelfVM.a is arm64-only so x86_64/generic destinations fail to link.
metadata: 
  node_type: memory
  type: project
  originSessionId: d87b221f-32d0-431e-994e-65d41b52d693
---

The SpatialSelf app links `libSelfVM.a`, which contains **arm64 simulator slices only**. Building via xcodebuild with a `generic/platform=visionOS Simulator` destination (or any x86_64 sim) fails at the `Ld` step with `found architecture 'arm64', required architecture 'x86_64'` for every VM object — this is NOT a code error.

**How to apply:** To build/link/run SpatialSelf on the simulator, target a concrete **arm64 visionOS 26.0** simulator (the app's deployment target is visionOS 26.0; older sims like 2.x won't match either). On an Apple Silicon Mac with a visionOS-26 runtime installed, the destination resolves to arm64 and links. Otherwise build for a real device. Swift-only changes can still be verified by confirming the build reaches the link phase with no `.swift:line:col: error:` lines. Workspace: `/Users/ungar/code/separatingForInlining/Enchilada.xcworkspace`, scheme `SpatialSelf`.


========================================
## project_spatialself_vm_coupling.md
========================================

---
name: project_spatialself_vm_coupling
description: "How SpatialSelf consumes the Self VM: a symlink to the xcframework + a Run Script build phase; renaming the VM build dir breaks both."
metadata: 
  node_type: memory
  type: project
  originSessionId: 4dad6243-9a77-41ed-a9fa-629ead7f8768
---

SpatialSelf (`~/code/separatingForInlining/`, workspace `Enchilada.xcworkspace`, project `SpatialSelf/SpatialSelf/SpatialSelf.xcodeproj`) does **not** copy the VM library — it consumes it two ways, both pointing at the `self64` build tree:

1. **Symlink:** `SpatialSelf/Frameworks/SelfVM.xcframework` → `self64/cmake-build-AVP-framework/SelfVM.xcframework`. The pbxproj links it by relative path `../Frameworks/SelfVM.xcframework`, so fixing the symlink fixes the link.
2. **Run Script build phase** "build SelfVM.xcframework" runs `SpatialSelf/scripts/build-self-vm.sh` before sources, which `env -i`-strips Xcode's env and calls `vm64/configure.sh xcframework` (tees to `/tmp/self-vm-build.log`, forwards only diagnostics to Xcode).

**Why it matters:** renaming/moving the VM build dir or the build script breaks SpatialSelf silently. On 2026-05-25 the dir rename `cmake-build-xcframework`→`cmake-build-AVP-framework` plus the `cmake-xcframework.sh`→`configure.sh xcframework` consolidation broke the (dangling) symlink and `build-self-vm.sh`; both were repaired (symlink repointed, script + SpatialSelf/README.md updated). That tree is **not** a git repo.

**How to apply:** if you rename/move anything under `self64/cmake-build-*` or `vm64/*.sh` that the VM→SpatialSelf path depends on, also fix the symlink and `build-self-vm.sh`. Related: [[feedback_vm64_xcode_build_dirs]] · [[project_hostbridge_plan]] · [[project_spatialself_sim_arch]].

**STALE-VM TRAP (2026-05-26):** rebuilding the xcframework is NOT enough — Xcode caches its *extracted* copy of an .xcframework (the `ProcessXCFramework` step) and will NOT re-link the app just because the inner `libSelfVM.a` changed (mtime is already fresh; `configure.sh` rm-rf's + recreates it each run). Symptom: a VM source change builds into the lib but the running app shows the OLD behavior (bit us on the `use_real_instead_of_cpu_timer` A/B). Fixes: a one-off Product→Clean Build Folder, OR the now-added tail of `build-self-vm.sh` which `touch`es the slice libs and `rm -rf`s `*XCFrameworkIntermediates*/SelfVM*` under `$OBJROOT`/`$SYMROOT`/`$BUILD_ROOT` to force a relink every build. Also beware multiple schemes: the **"Copy of SpatialSelf"** user scheme launches **Release** (no args); the original **SpatialSelf** launches **Debug** + `-s /Users/ungar/snapshot/T.snap` + OS_ACTIVITY/HANG_TRACER-disable env — different config dirs => easy to run a stale product from the other config.


========================================
## project_ui1_on_quartz_state.md
========================================

---
name: project_ui1_on_quartz_state
description: "Current (May 2026) state of getting the classic ui1 to run on Quartz — what's wired, what's stub, the hardcoded disable."
metadata: 
  node_type: memory
  type: project
  originSessionId: 76941134-ee61-4347-a04a-a735da7f1181
---

ui1 (classic UI) draws through the `ui1GraphicsGlobals` indirection slot. `allUI.self:116` hard-wires it to `x11Globals`; `ui.self:1310 openWindowOn:` rebinds it per call: `disp isEmpty ifTrue: [macToolboxGlobals] False: [x11Globals]`. So the intended Quartz target for ui1 is **`macToolboxGlobals`** (historical name), NOT ui2's `quartzGlobals` (which is canvas/Morphic-only and is the default `graphicsDependentGlobals*`).

What already works / is loaded: `globals abstractDrawable` (drawable.self) is the ui1 drawing protocol; `globals quartz drawable` is a substantial real Quartz impl of it inside quartz.self (6765 lines). `SELF_QUARTZ` defaults ON for macOS (cmake/common.cmake:29), so quartzPrims.cpp + quartzWindow.mm (Carbon-on-Cocoa shim: NSWindow/NSEvent/CoreText/QDBeginCGContext) are compiled in. `traits macWindow` + `macToolboxGlobals window` are fully defined in window.self (loaded); macWindow delegates to `macToolbox platformWindow` (window.self:684 `platformWindow: macToolbox platformWindow new`). `ui1OnQuartzHacks.self` IS loaded (via quartz.self:6765 subpart) but is minimal — it creates `globals macToolbox` with just `platformWindow = (||window)`.

What's the blocker: ui1 startup requires non-8-bit displays to go through `interposeVirtual8BitWindowIfFail:` (ui.self:491 ← checkColor8IfFail: 485). That method (ui.self:1038) is **hardcoded off**: `tryExperiment = false ... ifFalse: [^ fb value: 'not trying']`, tagged `[todo ui1 dmu experimental]`. So on Quartz (truecolor) ui1 bails with "not an 8-bit monitor".

What's stub/unloaded: `qDrawable.self`/`xDrawable.self` are empty vestigial modules (real impls live in quartz.self/xlib.self). `colormapEmulation.self` (ui1/, NOT loaded by allUI) holds BOTH escape hatches: the 8-bit-emulation window (`macToolbox virtual8BitPlatformWindow` w/ a Depth:8 `shallowPixMap`, `macToolboxGlobals virtual8BitWindow`) AND the truecolor world `uiWorld32` (= `uiWorld copy`). `macToolbox.self`/`macToolboxEvts.self` (Carbon) and their generated glue `macToolbox_wrappers.self` are NOT loaded / missing — but appear unnecessary since macWindow delegates to the Quartz `macToolbox platformWindow`, not Carbon.

Inconsistency to resolve: `ui1OnQuartzHacks` redefines `macToolbox platformWindow` as a method returning `window`, while `colormapEmulation` assumes it's a full object with `traits macToolbox platformWindow`. Whole path is `[todo ui1 dmu experimental]` and currently non-functional. See [[project_repo_flow_no_claude_upstream]].

## Phase 0 — confirmed live (May 2026)
Run: `cmake-build-xcode-macos/Debug/Self.app/Contents/MacOS/Self -s shortcuts.snap` from repo root (scheme's launch arg; working dir = repo root). Drive via a stdin script ending in `_Quit` (the `quit` shortcut prompts "save snapshot?" → hangs on EOF). Prompts echo as `"Self N"`. shortcuts.snap has ui/macToolbox/macToolboxGlobals/quartz/ui1OnQuartzHacks but NOT uiWorld32/colormapEmulation. Build was fresh; no rebuild needed.

`ui startOn: ''` (empty disp = Quartz path) fails immediately: **"No 'window' slot found in macToolbox"** — the `macToolbox platformWindow = (||window)` shim has no `window` to resolve. Live fix that works: `macToolbox _AddSlots: (| window = quartz platformWindow. |)`. Then `macToolbox platformWindow new` → `a quartz platformWindow(live)`, and `openDisplay:BoundingBox:WindowName:` + createBitmap + createCursor + init all SUCCEED (NSWindow opens). `spawnEventWatcherProcess` prints "nopped for now" (events not wired). Next gap: **"No 'depth' slot found in a quartz platformWindow"** — `macWindow isColor8` = `platformWindow depth = 8`.

So the Quartz window object is real. Window-protocol gap on `traits quartz platformWindow` (vs selectors the window/ui1 code sends): missing `depth` (startup blocker), `clear`, `delete`, `raise`, maybe `name:`/`iconName:`; already has gc/close/openDisplay:/size/position/globalToLocal:/localToGlobal:/warpPointerTo:/catchEvents/grafPort/isOpen. `traits quartz drawable depth` = 32, so adding `depth`→32 makes isColor8 false → falls into the disabled `interposeVirtual8BitWindow` (tryExperiment=false) → "not an 8-bit monitor".

With `depth` faked to 8 (isColor8 passes), next blocker is **"No 'fontIDAndStruct' slot found in macToolbox"** (sent from ui1/boxSize.self:338, font setup). This exposes the real shape of the work: ui1 sends a small `macToolbox`-namespace protocol — `platformWindow`, `fontIDAndStruct`, `pixMap`, `qdGlobals`, `colorTable`, `colorSpec`, `virtual8BitPlatformWindow` — and `ui1OnQuartzHacks` is meant to redirect these onto the `quartz` namespace but only (wrongly) did `platformWindow`. **Two gap classes:** (1) redirection — `quartz` already has equivalents for `platformWindow` and `fontIDAndStruct`, so ui1OnQuartzHacks just needs to alias them (+ add `depth`/`clear`/`delete`/`raise` to traits quartz platformWindow); (2) colormap/QuickDraw — `pixMap`, `qdGlobals`, `colorTable`, `colorSpec` have NO quartz equivalent (only in unloaded Carbon macToolbox.self) and are inherently 8-bit. Class (2) is needed only for the 8-bit-emulation route (Route 1); the truecolor route (Route 2 = uiWorld32) is about avoiding those calls. Window + `quartz drawable` layers are largely real; this is the crux decision. `screencapture` needs screen-recording permission (failed) and the UI exits on each error so no window persists yet — seeing a live window requires persisting the redirections, not more live-patching.

## Phase 1 progress (May 26 2026) — redirections persisted
**Edited `objects/graphics/ui1OnQuartzHacks.self`** (uncommitted): the broken `platformWindow = (||window)` is now a data-slot redirect `platformWindow = bootstrap stub -> 'globals' -> 'quartz' -> 'platformWindow' -> ()`; added the same for `fontIDAndStruct → quartz fontIDAndStruct`; added `depth = (||32)` to `traits quartz platformWindow`. Key lesson: redirect MUST be a data slot resolved at file-in (the `bootstrap stub ->` idiom, like `x11Globals xlib`), NOT a method `(||quartz platformWindow)` — `globals macToolbox` has no parent chain to the lobby, so unqualified globals don't resolve inside its methods ("No 'quartz' slot found in macToolbox"). (That's also why the Phase 0 REPL `_AddSlots:` patch worked — it ran in lobby scope.)

Test loop used: `sed '1,7d' ui1OnQuartzHacks.self` (drop the leading copyright string that throws cosmetic REPL syntax errors) + probe/`ui startOn: ''`/`_Quit`, piped to `Self -s shortcuts.snap`, backgrounded. Re-filing the module body at runtime works.

Result: with `depth` faked to 8 (discovery override), startup now clears window-open AND font setup and reaches **"initializing ui caches…"**, then hits **"No 'colorSpec' slot found in macToolbox"** — the colormap/QuickDraw boundary (`colorSpec`/`colorTable`/`qdGlobals`/`pixMap`, no Quartz equivalent).

## KEY FINDING (May 26 2026): uiWorld32 is NOT colormap-free
User chose "Route 2 = truecolor (uiWorld32)" — but reading `uiWorld32` (colormapEmulation.self:199-258) shows it is **8-bit-render-then-convert**, not pure truecolor: `setGraphicAndOffScreen` makes graphic32/offScreen32 at Depth:32 AND graphic/offScreen at **Depth:8**; `update` does `resend.update` (draws 8-bit) then `graphic copy:…To: graphic32` (8→32 blit). So ui1's color path (`macToolboxGlobals newPlatformColorForPixel:` = `macToolbox colorSpec new value:`, `platformColormap` = `macToolbox colorTable`, in colormap.self:104/112; `bitmap.self:61` pixMap; `pattern.self:173` qdGlobals) is hit **either way**. The colormaps/caches come from `ui initializeCaches` → `initializeColorsAndPatterns` + `colormapCacheInitialize` (ui.self:941/956/958), independent of which world. **Both routes therefore require reviving the 8-bit indexed primitives — `colorSpec`/`colorTable`/`pixMap`/`qdGlobals` + `bitmap copyFor:Size:Depth:` (8 and 32) — on the Quartz `macToolbox` namespace** (these only exist in the unloaded Carbon macToolbox.self, QuickDraw-based). uiWorld32's only real advantage: explicit 8→32 display blit instead of faking the window depth. So the "decision" is mostly moot; the real work is implementing an 8-bit indexed-color graphics subsystem backed by Quartz (CGBitmapContext / Self-side buffers). This matches the Phase-3 "big variable" estimate.

## Agreed design direction (May 26 2026): indexed framebuffer + convert primitive
David's chosen approach: keep ALL ui1 Self code believing in 8-bit indexed pixels (colormap animation, acetate, arrow planes, plane_mask, pixelValueAt: all unchanged), and add a primitive that converts (8-bit framebuffer + CLUT) → 32-bit RGBA → hand to Quartz. This is what uiWorld32 gropes toward, done properly. Splits into two halves:
- **Display/convert half = cheap & vectorizable** (David: "could use specialized vector instructions"). Index→RGBA is a 256-entry LUT gather (NEON, sub-ms for 1080p), so colormap animation stays "swap CLUT, re-convert, re-blit" with NO Self redraw. Cheaper still: a CGImage with `CGColorSpaceCreateIndexed(baseRGB,255,palette)` wrapping the 8-bit buffer → Quartz does index→RGB at blit; animation = rebuild indexed colorspace + re-blit same bytes. (IOSurface already imported in quartzWindow.mm for a shared 32-bit display surface.)
- **Indexed DRAWING TARGET half = the real work.** Confirmed: `quartz drawable` is RGBA (`foreground: aPaint`=CGColor at 4640; NO `pixelValueAt:`/`plane_mask`), and `macToolboxGlobals platformPixmap` = `macToolbox pixMap` (bitmap.self:59) which has no Quartz impl. The X path got indexed rasterization free from the X server; Quartz has none. So `macToolbox pixMap`/`platformPixmap` needs a Quartz-backed indexed drawable that ui1's line/rect/fill/copyArea/text/pattern ops write INDEX values into. Two builds: (a) **reuse CoreGraphics**: make the offscreen an 8-bit GRAYSCALE CGBitmapContext, draw with antialiasing OFF, "color" = palette index as the gray byte → CG rasterizes incl. text/glyphs, writes index bytes; pixelValueAt:/copyArea = byte ops. Smallest path, fits ui1's hard-edged 8-bit. (b) from-scratch software indexed rasterizer (vectorizable). Subtlety either way: `gc plane_mask:` (arrow/acetate planes) — CG has no plane mask, so under (a) those become read-modify-write masked byte writes to the backing store (small, SIMD-friendly set); under (b) native.

## Build progress (May 26 2026) — VM indexed-offscreen primitives DONE & validated
Added two Quartz VM primitives (the indexed-framebuffer foundation), compiled, and validated live:
- `MakeIndexedOffscreen_wrap(int32 w,int32 h)` → 8-bit grayscale `CGBitmapContext` (AA off, interp none); gray byte = palette index. Self: `quartz context makeIndexedOffscreenWidth: W Height: H` → `a quartz context(live)`.
- `BlitIndexedToContext_wrap(offscreen, dest, u_char* clut, uint32 clutLen, float x, float y)` → `CGBitmapContextGetData` + `CGColorSpaceCreateIndexed` + `CGImageCreate` + `CGContextDrawImage`. Self: `offscreen blitIndexedTo: destCtx CLUT: <bytes> X: x Y: y`. Colormap animation = re-blit same bytes with a new CLUT.
Both in `vm64/src/any/prims/quartzPrims.cpp` (after CGLayerCreateWithContext_wrap). Declared in `objects/glue/quartzTemplates.self` (context section): `void makeIndexedOffscreenWidth: int Height: int = CGContext {quartz context deadCopy} call MakeIndexedOffscreen_wrap` and `CGContext blitIndexedTo: CGContext CLUT: cbv_len u_char* X: float Y: float = void call BlitIndexedToContext_wrap`. Headless test (offscreen→offscreen blit w/ 256-colour CLUT) = BLIT-OK, no crash.

### HARD-WON RECIPES (reuse these)
- **Regenerate quartz glue** after editing quartzTemplates.self: in a running Self with primitiveMaker loaded (shortcuts.snap has it), `'objects/glue/quartzTemplates.self' runScript.` — `string runScript` = `_RunScriptIfFail:` treats the receiver as a FILENAME, reads+parses the whole file (handles the 578-line `From:'...'` string the console REPL can't). Writes `objects/glue/quartz.primMaker.hh` + `quartz_wrappers.self` into `bootstrap selfObjectsWorkingDir,'/glue/'` (= self64/objects/glue when launched from repo root). NOT `... contents runScript` (passes content as a path → "path too long"); NOT piping the file to stdin (console REPL desyncs on the long string literal).
- **Rebuild VM**: `xcodebuild -project cmake-build-xcode-macos/Self.xcodeproj -target Self -configuration Debug` (editing primMaker.hh invalidated the PCH → full rebuild ~minutes; "** BUILD SUCCEEDED **"). Building with Xcode open is fine (only *regenerating the cmake project* must avoid live Xcode).
- **Load regenerated wrappers into a running world**: `'objects/glue/quartz_wrappers.self' runScript.` (prints "reading... modules quartz_wrappers"). Whole snapshot not rebuilt; tests refile.
- Backups of the pre-regen glue at /tmp/quartz.primMaker.hh.bak, /tmp/quartz_wrappers.self.bak.

## Task 2 progress (May 26 2026) — X-GC protocol on quartz context DONE & validated
Added a 3rd VM prim `OffscreenPixelAt_wrap(ctx,x,y)→int32` (pixelValueAt:; reads the index byte from CGBitmapContextGetData, flips top-down→CG bottom-up, -1 if OOB). Template decl `CGContext indexedPixelAtX: int Y: int = int call OffscreenPixelAt_wrap`; regenerated + VM rebuilt (BUILD SUCCEEDED).
KEY VALIDATION: ui1 drives its drawable via an X11-style GC; taught a `quartz context` that protocol. `foreground8Bit: i` → `setGrayFillColorGray:/setGrayStrokeColorGray: (i/255)` so the gray byte = palette index. Verified end-to-end: fill 137 then `indexedPixelAtX:Y:` = 137; two rects at indices 137 & 42 read back correctly. So CG's rasteriser (AA off) writes exact index bytes — the core thesis holds.
Persisted in `ui1OnQuartzHacks.self` (on `traits quartz context`): real `foreground8Bit:`; `background8Bit:` deferred(self); stubs `fillSolid/fillStippled/fillOpaqueStippled` (→solid), `function:`+`gxClear/gxAnd/gxCopy/gxOr/gxXor` (return real X11 codes 0/1/3/7/6 but function: is no-op = copy mode; XOR rubber-banding deferred), `plane_mask:`, clip (`setNoClipMask/setClipRectangle:/setClipMask:/setClipOrigin:`), `stipple:`, `dashes:/dashedLineWidth:` all deferred→self. NOTE `lineWidth:` and `font:` already exist on traits quartz context — did NOT redefine. Multi-slot `{...}{...}` grouped-slot transporter syntax files in clean.

## Task 2 DONE (May 26 2026) — quartz indexedPixmap object built & validated
Added `globals quartz indexedPixmap` (parent `traits quartz drawable`; slots context/width/height) + `traits quartz indexedPixmap` in ui1OnQuartzHacks.self: `createForSameScreenAs:Size:Depth:` → `copy initOffscreenSize:` (builds a `quartz context makeIndexedOffscreenWidth:Height:`); `gc`(=context), `size`, `depth`(8), `pixelValueAt:`(→indexedPixelAtX:Y:), `delete`(context release), `copyArea:To:At:GC:` (STUB — deferred bitblt, needs index-preserving byte-copy, do with Task 3). Overrode `macToolboxGlobals platformPixmap` (was dead `0 macToolbox pixMap`) → data-slot redirect to `quartz indexedPixmap`. `fillRectangle:GC:`/`drawLine:To:GC:` etc. inherited from traits quartz drawable (they draw into the passed gc-context; bitmap.self always passes `image gc` = the pixmap's own context). Validated: `macToolboxGlobals platformPixmap createForSameScreenAs:... Size: 64@64 Depth: 8` → size 64@64 depth 8; foreground8Bit: 200 + fillRectangle:GC: → pixelValueAt: = 200; delete clean. Refiles without error. NOTE: `globals quartz *` (parented to traits→globals) resolve `quartz`/globals fine inside methods; only the PARENTLESS `globals macToolbox`/`macToolboxGlobals` need data-slot redirects (`= bootstrap stub -> ...`) instead of methods.

## Task 3 — FIRST COLOUR ON SCREEN (May 26 2026) ✅
Proved the full pipeline visually: opened a real Quartz window (`macToolbox platformWindow new` + `openDisplay: '' BoundingBox: ((100@100)##(320@220)) WindowName:`), drew 3 rects into an 8-bit indexed offscreen via `foreground8Bit: 1/2/3` + `fillRectangle:`, built a 768-byte CLUT (idx1→blue, 2→red, 3→green), then `off blitIndexedTo: (pw grafPort gc) CLUT: clut X:0 Y:0. (pw grafPort gc) flush`. Window showed blue bg + red top-left + green bottom-right, correct colours & positions (no y-flip problem for fills). Screenshot saved /tmp/ui1_on_quartz_first_colour.png.
Display mechanism: the window holds a persistent IOSurface-backed bitmap context (`grafPort gc` from QDBeginCGContext at window init); `gc flush`=CGContextFlush pushes drawing into the IOSurface; the IOSurface→NSView blit (`blitIOSurfaceToView`) happens inside `QuartzWindow::check_carbon_events` (OS::check_events, called at VM interrupt-check points). So a frame appears only while the VM is actively executing (timer-driven pump) — a `_Quit`-immediately script shows nothing; keep the VM busy (e.g. `[|c| c:0. [c<120000000] whileTrue:[c:c+1]] value`) and screenshot mid-loop. `screencapture -x -R x,y,w,h file.png` works (screen-recording permission OK). NOTE Self loop idiom: integers have NO `timesRepeat:`; use `whileTrue:` or `to:Do:`.
Remaining Task-3 bits folded into Task 4: index-preserving copyArea byte-copy prim (offscreen→offscreen, for uiWorld32 graphic→graphic32 + scrolling; indexedPixmap copyArea:To:At:GC: is still a stub), and hooking this window blit into ui1's real world-flush path.

## ⚠️ REMINDER TO RAISE WITH DAVID (his request, May 26 2026)
David: "eventually will want same convention as display; remind me about that." Re the ui1-on-Quartz window/flush/event handling — the current approach (manual `blitIndexedTo:` + `gc flush` + relying on the VM event-pump) is ad-hoc. Eventually it should follow the SAME CONVENTION as the existing `display` abstraction (the way the X11 path / `xlib display` and the standard Self graphics display protocol work) so ui1 (and the codebase) treat the Quartz display uniformly rather than via a bespoke path. NOT yet designed — surface this to David before/while finalizing Task 4 window integration, and again at hand-off.

## Task 4 in progress (May 26 2026) — ui1 now runs deep into startup
Strategy chosen: make ui1 believe the display is 8-bit (`platformWindow depth`→8, changed from 32) so it uses plain `uiWorld` + indexed offscreens; truecolor conversion only at the offscreen→window flush. This AVOIDS uiWorld32/colormapEmulation entirely (simpler than the earlier "Route 2"). `ui startOn: ''` now passes the colour check, opens the window, and progresses through:
- **colormap**: implemented `quartz colormap` (software 256×3 CLUT) in ui1OnQuartzHacks: createFor:Depth:/storeOne:/store:/queryOne:/allocColor:/install(noop)/installAndSync/delete + `clut` accessor; reuses `xlib xColor` as the colour carrier (works w/o X). Overrode `macToolboxGlobals newPlatformColorForPixel:`→`0 xlib xColor new allComponents pixel: i` and `platformColormap`→`quartz colormap`. initializeCaches now COMPLETES ("creating colormap series … done." ×2).
- **patterns**: `quartz qdGlobals` stub (black/white/gray/lightGray/darkGray → nullImage; needs `parent* = traits clonable` for globals access) + redirect `macToolbox qdGlobals`. Stippling still degraded to solid.
- **foreground colour**: fixed `foreground8Bit:` — ui1 passes a `colormapEntry` (cme), not an int; use `cme index` (matches xlib `foreground: cme index`).
FIXED boxSize gap: root cause was a real bug in **quartz.self** — `quartz fontIDAndStruct sizeOfString:` returned a RECTANGLE (`(0@0)#corner`), but the font contract (font.self sizeOfString:, "= widthOfString @ heightOfString") and all 12 callers (ui1) expect a POINT; `nameSize x` on the rect yielded a point → `smallInt + point`. Fixed in quartz.self: `sizeOfString:` now returns `(r width) @ (r height)` (a point); `widthOfString:`→`(sizeOfString:) x`, `heightOfString:`→`(sizeOfString:) y` (same scalar results). quartz.self now has uncommitted edits too. (Tested live via _AddSlots: mirror since refiling all 6700 lines of quartz.self is heavy; real once snapshot rebuilt.)
DRAWING-PHASE gaps chased (each: refile + `ui startOn: ''` + read next "No 'x' slot" error):
1. `fillPolygon:GC:` — ADDED to traits quartz drawable (in ui1OnQuartzHacks): point-list → x/y vectors → fillPolygonIntegerXs:Ys:GC: (mirrors xlib).
2. `closePath`/`strokePath` sent to the drawable — BUG in quartz.self `drawLines:GC:` (bare `closePath`/`strokePath` instead of `gc closePath`/`gc strokePath`; drawLine:To:GC: correctly uses gc). FIXED in quartz.self.
3. Current gap: `No 'widMax' slot found in a quartz fontIDAndStruct` — `quartz fontIDAndStruct width = (widMax * fontSize)` but the font instance has no widMax/fontSize (font metrics not populated for this font). Next: figure out how the quartz font is meant to get widMax/fontSize (atsFont metrics?) — likely the redirected `quartz fontIDAndStruct` isn't fully initialized for ui1's use.

ACCUMULATED uncommitted quartz.self fixes (all genuine bugs): sizeOfString rect→point, widthOfString/heightOfString →x/y, drawLines:GC: gc-prefix. Plus the ui1OnQuartzHacks additions.
WORKFLOW NOTE: gap-chasing is iterative (likely many more: font metrics, more draw ops, then the flush hook + events). Friction: quartz.self fixes don't take effect via the ui1OnQuartzHacks refile, so each is mirrored with `_AddSlots:` in the test header. RECOMMEND before continuing: rebuild the world snapshot with all edits baked in (or move the quartz.self fixes into ui1OnQuartzHacks overrides) so iteration is a single refile with no mirrors.
(superseded) earlier this run the gap was: `No 'fillPolygon:GC:' slot found in a quartz indexedPixmap` — drawable-protocol completeness: traits quartz drawable has `fillPolygonIntegerXs:Ys:GC:`/`drawPolygonIntegerXs:Ys:GC:` but ui1 also sends `fillPolygon:GC:` (and probably more abstractDrawable ops). Now in an iterative "add the missing drawable ops to traits quartz drawable" phase (each a quick add), interleaved with hooking the window flush so drawing becomes visible.
OLD (now fixed) gap was: `No 'addSmallInteger:' slot found in a point` at **boxSize.self:693** (`minSlotNameAndAssignable`), inside objectBody makeSlots/collectSizes during uiWorld body layout. Line 693 sums `slotNameLeftMargin + buttonSize x + slotNameButtonGap + nameSize x + (assignableWidth: asgn) + slotNameRightMargin` — one sub-value is a POINT where a scalar width is expected (likely a quartz font/string measurement returning w@h instead of a width scalar, or assignableWidth: returning a point). Next: probe which term is a point (likely font text-extent via the redirected `quartz fontIDAndStruct`), fix the measurement to return a scalar. Then continue chasing gaps; eventually hook the window flush (Task 3 blit) into uiWorld's flush + un-nop spawnEventWatcherProcess for input.

## INTEGRATION DONE + SNAPSHOT REBUILT (May 26 2026)
Per David: integrated ui1OnQuartzHacks into mainstream. Now:
- **quartz.self** holds all the Quartz graphics SUBSTANCE (Module: quartz), inserted just before its `'-- Sub parts'`: traits quartz platformWindow `depth`(8); the X11-GC protocol on traits quartz context (foreground8Bit:/background8Bit:/fillSolid/gx*/function:/plane_mask:/clip/stipple/dashes:); traits quartz drawable `fillPolygon:GC:`; `quartz indexedPixmap`; `quartz colormap`; `quartz qdGlobals`. Plus the earlier bug fixes (sizeOfString rect→point, widthOfString/heightOfString →x/y, drawLines:GC: gc-prefix).
- **ui1OnQuartzHacks.self** is now a THIN redirect layer only: `globals macToolbox` (platformWindow/fontIDAndStruct/qdGlobals → quartz) + `macToolboxGlobals` (platformPixmap → quartz indexedPixmap, newPlatformColorForPixel: → 0 xlib xColor…, platformColormap → quartz colormap). It loads only on Quartz (subpart of quartz.self), which is why the redirects-to-`quartz` are safe here but couldn't live in bitmap.self/colormap.self (loaded everywhere).
- Rationale: ui1OnQuartzHacks loads ONLY on Quartz, so Quartz-only code is fine there, but the substance belongs in quartz.self as first-class Quartz graphics; the module keeps just the wiring.

**NEW TEST SNAPSHOT `ui1quartz.snap`** (repo root, untracked, ~57MB): baked from shortcuts.snap + `'objects/graphics/quartz.self' runScript` (re-reads ui1OnQuartzHacks too) + `memory snapshotOptions fileName: 'ui1quartz.snap'. memory writeSnapshot`. Resuming it directly (`Self -s ui1quartz.snap`) runs `ui startOn: ''` straight to the widMax gap — NO refile, NO _AddSlots mirrors. **New loop:** edit source → rebake (`'objects/graphics/quartz.self' runScript` + writeSnapshot to ui1quartz.snap) → test against ui1quartz.snap. shortcuts.snap left untouched. Refactor verified functionally identical (reaches same widMax gap).

## widMax FIXED + next gap = window-as-drawable (caret) (May 26 2026)
FIXED widMax: `quartz fontIDAndStruct width = (widMax * fontSize)` referenced an undefined `widMax`. Added `widMax = (metrics maxAdvanceWidth)` to traits quartz fontIDAndStruct in quartz.self (mirrors ascent/descent = metrics field; ATSFontMetrics has maxAdvanceWidth, set by ATSFontGetHorizontalMetrics in quartzPrims.cpp). Snapshot ui1quartz.snap rebaked with it.
Next gap: `No 'drawLine:To:GC:' slot found in a quartz platformWindow`. Stack: caret drawColor:/unmap → `traits drawing line:To:Color: cme` (drawing.self:332 = `image gc foreground8Bit: cme. image drawLine: pt1 To: pt2 GC: image gc`) where `image` = the platformWindow. So ui1 draws the CARET directly to the window (carets/cursors draw straight to screen over buffered content, by design). The platformWindow isn't a drawable.
**DESIGN FORK (needs decision, ties to David's "same convention as display"):** the caret uses `foreground8Bit: cme` (an 8-bit index) on the window, but the window is truecolour. Options: (a) give quartz platformWindow the drawable protocol delegating to its gc (truecolour context) — fast, but `foreground8Bit:` writes index-as-gray → caret colour wrong (and the offscreen→window CLUT flush would overwrite it unless caret drawn after); (b) give the window an 8-bit indexed "shadow" offscreen that direct draws + the world flush both target, then blit shadow→truecolour (the virtual8BitWindow idea — most correct, more work); (c) make the window inherit traits quartz drawable as a 2nd parent (watch depth/gc conflicts — platformWindow's own depth=8/gc should shadow drawable's). Note caret likely also wants XOR (function: is currently a no-op). RECOMMEND deciding (a) vs (b) before proceeding — (b) is the clean "window is just another indexed drawable, converted at display" model.

## 🎉 ui1 STARTS + RENDERS IN COLOUR ON QUARTZ (May 26 2026)
David chose **(b) 8-bit shadow window**. Implemented on quartz platformWindow (in quartz.self): `shadow` data slot (an indexedPixmap, nil for ui2); `gc` routes to `shadow gc` when set else `quartzWindow gc` (truecolour); `makeShadow` (creates the shadow sized to the window); `blitShadowWithCLUT:`; and the drawable ops (drawLine:To:GC:, drawLines:, drawRectangle:, drawString:At:, drawPolygon…, fillPolygon:, fillPolygonIntegerXs:, fillRectangle:, draw/fillArcWithin…, copyArea:, pixelValueAt:) forwarded to the shadow. `traits macWindow openIfFail:` (window.self) now calls `platformWindow makeShadow` after openDisplay (ui1/Quartz-only path). With that, **`ui startOn: ''` runs to completion with NO errors** — ui1 fully starts on Quartz; window "The Self World" opens.
**RENDERED IN COLOUR:** `ui world draw` fills `ui world graphic` (an indexedPixmap) with the world (bg index 7); blitting `ui world graphic image gc blitIndexedTo: pw quartzWindow gc CLUT: (ui colormap0 xcm clut)` shows the classic Self sage-green desktop in the window (correct colours via the real colormap — a gray-ramp CLUT had made it look black since bg index 7 → gray 7). Empty world = just background (correct for fresh start). Screenshot /tmp/ui1_on_quartz_world_rendered.png. The full pipeline (indexed draw → ui colormap → CLUT → CGImage → Quartz window) works end-to-end.
Key live recipe to view: `ui startOn: ''. ui world draw. [|pw c| pw: ui window platformWindow. ui world graphic image gc blitIndexedTo: pw quartzWindow gc CLUT: (ui colormap0 xcm clut) X: 0 Y: 0. pw quartzWindow gc flush] value.` then keep the VM busy (whileTrue loop) so the event-pump blits IOSurface→view; screencapture.

## Resume here (paused May 26 2026 — ui1 renders; next = automatic flush hook + events)
Next: (1) **hook the flush** so ui1's normal `world display`/`update` does `graphic→window blitIndexedTo: CLUT` + `pw quartzWindow gc flush` automatically each frame (instead of the manual blit above) — find uiWorld's flush/display path (uiWorld `draw`/`display`/`update`, and how the X path copies offScreen→window) and route it through pw blitShadowWithCLUT:/the graphic blit; the colormap `install` should trigger a reblit (colour-map animation). Decide which CLUT is "current" (ui colormap0 xcm clut worked). (2) **un-nop spawnEventWatcherProcess** (quartzWindow.mm prints "nopped for now") so mouse/keyboard reach ui1 → then bodies/menus/caret become interactive. (3) caret/direct-window draws already go to the shadow — blend shadow over the world at display (caret on top). Watch y-flip (bg looked upright). NOTE the world content is in `ui world graphic` (indexedPixmap), NOT the window shadow; the shadow holds only direct-to-window draws (caret).
Uncommitted (nothing committed; snapshot not rebuilt — tests refile via runScript): `vm64/src/any/prims/quartzPrims.cpp` (3 wrap fns: MakeIndexedOffscreen/BlitIndexedToContext/OffscreenPixelAt), `objects/glue/quartzTemplates.self` (3 decls) + regenerated `quartz.primMaker.hh`/`quartz_wrappers.self`, `objects/graphics/ui1OnQuartzHacks.self` (platformWindow/fontIDAndStruct redirects; depth→8; full X-GC protocol on traits quartz context; indexedPixmap object; macToolboxGlobals platformPixmap/newPlatformColorForPixel:/platformColormap overrides; quartz colormap; quartz qdGlobals; foreground8Bit: cme-aware). VM Debug rebuilt (BUILD SUCCEEDED). Test loop: `'objects/glue/quartz_wrappers.self' runScript. 'objects/graphics/ui1OnQuartzHacks.self' runScript. ui startOn: ''. _Quit` piped to `Self -s shortcuts.snap`, backgrounded; add `0 as printError.` after the failing line for a stack trace.

Next concrete step: fix **boxSize.self:693** point-vs-scalar (probe which of buttonSize x / nameSize x / assignableWidth: asgn / margins is a point — likely a quartz font text-extent returning w@h; make it a scalar width). Then keep re-running `ui startOn: ''` to chase the next gaps. Larger remaining pieces once it lays out: (a) hook the proven window blit (Task 3) into uiWorld's flush so frames reach the screen (offScreen `blitIndexedTo:` the window gc + flush; the colormap's `clut` is the palette; `install` should trigger a reblit for colour-map animation); (b) index-preserving copyArea byte-copy prim + wire `indexedPixmap copyArea:To:At:GC:` (currently stub; needed for scrolling/double-buffer); (c) un-nop `spawnEventWatcherProcess` for input; (d) `clear`/`delete`/`raise` on traits quartz platformWindow. **Watch y-flip** (fills were upright in Task-3, but text/copyArea may need a CTM flip). **And the standing REMINDER above (same convention as display).**

## ✅ AUTOMATIC FLUSH DONE + TEXT ORIENTATION FIXED (May 26 2026, session 2) — supersedes the "Resume here" above
David chose **standard display-protocol backends** over a bespoke uiWorld override (this IS the "same convention as display" he flagged: implement the Quartz backends so ui1's normal `display`→`displayNoUpdate`→`update`→`syncGraphics`→`window sync` path drives the screen; the window is "just another indexed drawable, converted at display"). **COMMITTED 9b3c4241** on AVP-port (6 files: quartzPrims.cpp, quartzTemplates.self + regen glue, quartz.self, window.self); also baked into ui1quartz.snap.
- **Root cause of the blank window**: the whole `ui world display` path bottomed out in stubs — `quartz indexedPixmap copyArea:To:At:GC:` was a no-op (so both `graphic copyTo: offScreen` AND `offScreen copyTo: windowBitmap` did nothing), and `macWindow sync`/`flush` were `[todo]`/`[xxx]`, and `quartz colormap install` was a no-op. Path mechanics: `uiWorld update = offScreen copyTo: windowBitmap`; `windowBitmap image = window platformWindow` (bitmap.self:404), so update bottoms out in `indexedPixmap copyArea: rect To: platformWindow At: 0@0 GC:` (the X path's XCopyArea offscreen→window).
- **New VM prim** `CopyIndexedArea_wrap(src,dst, sx,sy,w,h, dx,dy)` in quartzPrims.cpp (after OffscreenPixelAt_wrap): index-preserving byte-region bitblt between two 8-bit grayscale CGBitmapContexts; top-down logical coords, clips to both, flips top-down↔CG bottom-up per row (full-buffer copies are a straight memcpy since the flip cancels). Template decl `CGContext copyIndexedAreaTo: CGContext SrcX:..SrcY:..Width:..Height:..DestX:..DestY:.. = void call CopyIndexedArea_wrap` (quartzTemplates.self); glue regenerated (C_func_8); VM Debug rebuilt (BUILD SUCCEEDED).
- **Self backends** (all in quartz.self except where noted): `quartz indexedPixmap copyArea:To:At:GC:` now real (`context copyIndexedAreaTo: destImage indexedContext …`); `indexedContext` on indexedPixmap (=context) and on platformWindow (=shadow gc) resolves the dest CGContext. `quartz platformWindow`: `currentCLUT` data slot, `displayShadow` (blit shadow→window via currentCLUT, no-op if nil), `sync`/`flush` (=displayShadow + `quartzWindow gc flush`). `quartz colormap install` records its `clut` onto `win` (=the platformWindow, from colormap.self:1387 `createFor: win platformWindow`) + `displayShadow` (so colour-map animation re-blits without ui1 redraw); `installAndSync` = install + flush — mirrors X `xSetWindow:Colormap:`. `macWindow sync`/`flush` (window.self) route to `platformWindow sync`/`flush` (were stubs). CLUT confirmed live: `CLUTNIL=false` after startup (colormap0 install during createColormaps sets it).
- **TEXT ORIENTATION FIX** (the y-flip the prior note warned about): the indexed offscreen is bottom-up; the display blit (`blitIndexedTo:` into the flipped window gc) flips the whole buffer, which lands fills/lines/positions correctly top-down but rendered glyphs upside-down (layout was right, only glyphs inverted — confirmed by screenshot). Fix = pre-invert the offscreen's text matrix so glyphs draw mirrored and come out upright after the blit flip: added `context setTextMatrix_A: 1 B: 0 C: 0 D: -1 TX: 0 TY: 0` in `quartz indexedPixmap initOffscreenSize:` (Self-only, NO VM rebuild). This is the indexed-offscreen analogue of `setCTMForZeroAtTopHeight:`/`setTextMatrixToInvert` (quartz.self:4961/5006), whose `getCTM_TY=0` guard deliberately skips the non-flipped (indexed) case. Persists across `font:`/CGContextSelectFont (verified: ui2's graf `initialize` sets it once at 5344 and it survives). NOTE `setTextMatrixToInvert` itself can't be reused here (its guard early-returns when TY=0), hence the raw setTextMatrix call.
- **RESULT**: `ui startOn: ''. ui world draw. ui world display.` now paints the **lobby outliner** in the window AUTOMATICALLY (no hand-blit) with **upright text** ("lobby", "defaultBehavior▾", "globals▾", "4 more slots", "]" eval prompt, "an evaluator(for…)"/"Dismiss"/"Eval"), correct sage-green colours, correct layout. Screenshots /tmp/ui1_textfix_2x.png, /tmp/ui1_baked_2x.png. Window at 100@100 size 400@300; `screencapture -x -R 88,76,430,340 f.png` grabs it (keep VM in a `[c<4000000000] whileTrue:` loop so the IOSurface→view pump runs).
- **Snapshot rebaked**: ui1quartz.snap (repo root, untracked) baked from shortcuts.snap + `'objects/graphics/window.self' runScript` + `'objects/graphics/quartz.self' runScript` (re-reads quartz_wrappers for the new prim, and ui1OnQuartzHacks) + `memory snapshotOptions fileName: 'ui1quartz.snap'. memory writeSnapshot`. Resuming `Self -s ui1quartz.snap` then `ui startOn: ''. ui world draw. ui world display.` renders with NO refile. (The trailing "EOF reached before min transfer limit" is just stdin closing — harmless.) Backups: /tmp/quartz.primMaker.hh.bak2, /tmp/quartz_wrappers.self.bak2, /tmp/ui1quartz.snap.bak.

## Resume here (paused May 26 2026, session 2 — ui1 auto-renders w/ correct text; next = INPUT)
This session's work is COMMITTED (9b3c4241): vm64/src/any/prims/quartzPrims.cpp (+CopyIndexedArea_wrap), objects/glue/quartzTemplates.self (+1 decl) + regenerated quartz.primMaker.hh/quartz_wrappers.self, objects/graphics/quartz.self (indexedPixmap copyArea+indexedContext, platformWindow currentCLUT/indexedContext/displayShadow/sync/flush, colormap install/installAndSync, initOffscreenSize text-matrix invert), objects/graphics/window.self (macWindow sync/flush). The earlier-session foundation was already committed (05a4e83a + 50f98e7c) — the prior note's "uncommitted" was stale. NOTE the resume-test loop: with ui1quartz.snap baked you DON'T refile — just `Self -s ui1quartz.snap` + the script.
Next: **(1) un-nop `spawnEventWatcherProcess`** (quartzWindow.mm prints "nopped for now") so mouse/keyboard reach ui1 → click/type/menus/caret become interactive (this is the big one for a usable UI; the catchEvents/quartz event machinery exists for ui2 — wire ui1's eventWatcher/handler to it). **(2)** caret/direct-window draws already go to the shadow; once events work, confirm caret blends on top at display (it shares the shadow with the world content via copyArea — may need the shadow to also hold world content, or composite world-graphic + caret). **(3)** verify colour-map animation visually (install→reblit path is wired but unproven on screen). **(4)** copyArea sub-rectangles (scrolling) — the prim handles them but only full-buffer copies are exercised so far. **(5)** redraws are only triggered when something calls `display`; with events wired, ui1's normal damage/redraw cycle drives it. Lower-priority leftovers: `clear`/`delete`/`raise` on traits quartz platformWindow; stippled fills (degraded to solid); XOR (`function:` is a no-op → rubber-banding deferred).

## ✅ INPUT DONE — mouse + keyboard interactive (May 26 2026, session 3) — COMMITTED e9227372
ui1 is interactive on Quartz: clicks make ui1 react & redraw, typing inserts text (point-to-type). Verified LIVE with real clicks/keystrokes (David clicked & typed "42" into the evaluator) — no errors through the whole path. Files: objects/graphics/quartz.self + window.self only (2 files, +279).
- **Wait strategy decided (David's Socratic guidance, VERIFIED):** ui1/X BLOCKS (eventWatcher `watch` → `display nextEvent` → `nonBlockingEventAction:` → `file suspendForIO` on the X fd). ui2/Quartz SLEEP-POLLS (`worldMorph delayIfNoInputFor:` = `times delay: 10` + check `eventsPending`, on the periodic stepProcess). KEY INSIGHT: Quartz events reach the VM `_evtQ` ONLY via `QuartzWindow::check_carbon_events` (os_unix.cpp:1001 ← `OS::check_events` on the VM interrupt path), and `put_event` does NOT signal/wake anything. So a blocking watcher would DEADLOCK (idle VM never pumps Cocoa → fd/pipe never written). ui2's `times delay:` is really the HEARTBEAT that keeps the VM cycling so events pump at all. ∴ ui1-on-Quartz MUST sleep-poll (not a self-pipe block).
- **`quartz ui1EventSource`** (quartz.self): the `display` for ui1's watcher. `nextEvent` sleep-polls `platformWindow eventsPending` (`times delay: pollDelayMS`=10), reads `platformWindow nextEvent`, decodes → ui1 event, `raw delete`. macWindow `openIfFail:` (window.self) sets `display: quartz ui1EventSource forPlatformWindow: platformWindow` (macWindow's `display` otherwise DEFAULTS to `xlib display`, window.self:52 — wrong for Quartz), and `spawnEventWatcherProcess` now `watcherProcess resume` (was the "nopped for now" stub). Source also answers the display protocol macWindow forwards: synchronize:(noop)/syncDiscardingIf:(→sync)/flush/xPutBackEvent:(drop).
- **`quartz ui1Event`** + decode methods on `globals quartz event parent` (quartz.self): `setUI1Event:` dispatches on `getClass` (classes mouse/keyboard/window) to `setUI1Mouse:`/`setUI1Key:`/`setUI1Window:`, building an X-style event with `typeName` (buttonPress/buttonRelease/motionNotify/keyPress/keyRelease/clientMessage/configureNotify/expose/otherEvent) + x/y/button/buttonName(left/middle/right)/state/keycode/lookupString/newState/isDeleteWindow/delete(noop). Mirrors `setUI2Event:`. `ui1ButtonNumber` mirrors ui2 `whichButton` (Mac 1-button + option→2/command→3/control→2). Mouse coords = `windowMouseLocation` (window-local, confirmed live: clicks read e.g. 99@175 inside a 400@300 window).
- **Point-to-type (the keyboard gotcha):** `ui keyDown:String:At:Event:` (ui.self:1075) routes the char to `(world componentContaining: pos) keyPress: keycode String: str` — the widget UNDER `pos`. But keyboard events carry NO location (`pos` was 0@0 → keystrokes routed to top-left = nowhere). FIX: the source tracks `lastCursorX/Y` from each mouse event and stamps key events with it (in `nextEvent`). So typing lands under the cursor — hover the eval field and type. (ui1 keyDown only inserts; keyUp→nullTarget just updateCursor, no double-insert.)
- **Keyboard char fix:** the .mm stores `kEventParamKeyMacCharCodes` as `typeUInt32` (quartzWindow.mm:426), so read it `Type: types uint32` (was `utf8Text` → type-mismatch → empty string). `keycode` = `parameters keyCode` (physical), `lookupString` = `cc asCharacter asString`.
- **`drawPoint:GC:`** added: `traits quartz drawable` (a 1x1 indexed fill via `gc fillRectX:Y:Width:1 Height:1`) + forwarded from `traits quartz platformWindow` to its shadow. ui1 draws single pixels straight to the window (cursor/selection feedback); this op was the one missing drawable primitive (all others — drawLine:To:/drawLines:/drawRectangle:/fillRectangle:/drawString:At:/arcs/polygons/copyArea — were already there/forwarded). Found by a live click → `No 'drawPoint:GC:' slot found in a quartz platformWindow`.
- **Testing recipe (manual clicks; synthetic events BLOCKED):** CGEventPost is DROPPED — Terminal.app (the shell's controlling app) lacks macOS Accessibility permission (verified: a synth mouse-move didn't move the cursor). So input must be tested by REAL human clicks. Recipe: launch `Self -s shortcuts.snap` backgrounded with refiles + `ui startOn: ''. ui world draw. ui world display.` + a yielding keepalive `[c<N] whileTrue:[times delay:100. c:c+1]` (keeps VM cycling so events pump); after STARTED-OK run `osascript -e 'tell application "System Events" to set frontmost of (first process whose name contains "Self") to true'` to bring the window forward (WITHOUT this it gets NO events — must be key/frontmost); David clicks/types; Monitor the trace; `screencapture -x -R 88,76,460,420`. A temp trace `('UI1EVT ', tn, ...) printLine` in nextEvent was used during bring-up and REMOVED before commit.
- **Snapshot:** ui1quartz.snap rebaked (REFILED-OK/BAKED-OK) with input. Backup /tmp/ui1quartz.snap.bak2.

## Resume here (paused May 26 2026, session 3 — ui1 mouse+keyboard interactive)
Committed: e9227372 (input) atop 9b3c4241 (auto-flush+text) atop 50f98e7c/05a4e83a (foundation). All on AVP-port. Test by real human clicks only (no Accessibility for synth events); window must be frontmost (osascript activate) and the VM kept cycling (keepalive heartbeat) or events don't pump.
Next refinements (all build on the working input foundation): **(1) caret position** — typed "42" shows the caret one slot off ("4|2"); chars insert in correct order, so it's editor caret-rendering on the shadow, not plumbing. **(2)** exercise double-click (whichButton/count path → 'DoubleClick' is decoded for ui2 but I map down→buttonPress only; ui1 may want X double-click via timing), drag (buttonPress→motionNotify(dragged)→buttonRelease; cross-window drag uses the .mm destinationSelfWindow logic), menus (right/middle-button → world menu), resize (configureNotify fills width/height from platformWindow size → window/shadow resize — untested), close (clientMessage isDeleteWindow → window close — untested). **(3)** map window `handleActivate` → maybe a focus event (currently 'otherEvent'); ui1 is point-to-type so may not need focusIn, but confirm. **(4)** the standing flush/colour-map-animation refinements from session 2 still apply.

## ✅ CARET POSITION FIXED (May 26 2026, session 3 cont.) — COMMITTED 12b1135a
The "4|2" caret (typed "42", caret landed a half-char behind) was NOT XOR/erase and NOT plumbing. Root cause: the ui1 editor font is the X11 name `lucidasanstypewriter` (preferences editorFont), which doesn't exist on macOS → `CTFontCreateWithName` silently substitutes a PROPORTIONAL font (Helvetica), whose space advance (3.33px@12pt) is HALF the digit/letter advance (6.67px). The fixed-width editor positions caret/text on one cell width = `quartz fontIDAndStruct width` = `widMax*fontSize`, and `widMax = metrics maxAdvanceWidth` which the VM sets to the SPACE glyph advance (quartzPrims.cpp:923-926). So caret advanced at half the rendered rate. DIAGNOSIS via a temp trace in textEditor.self `move_caret`: `fontWidth=3.33398 rendered0=6.67383` (exactly 2×). FIX (Self-only, no rebuild): `quartzNameForFontSpec:` (quartzForFF.self) maps known X11 monospace names (lucidasanstypewriter/lucidatypewriter/fixed/screen/monospace) → 'Menlo' (mirrors the existing digit-name→'Courier' rule). With a real monospace, space advance = char advance = cell, the space-based metric is correct, caret aligns, AND text renders uniformly. Verified live by David ("good!"). ui1quartz.snap rebaked. NOTE: this means `width`/`widMax` only work right for monospace fonts; the editor inherently assumes monospace (X path too). KEY ACCESS FACTS (for future font debugging): editor font = `preferences editorFont` ('lucidasanstypewriter', size 12); `boxSize textEditorFont` is NIL on the global (the live font is on a copy); `quartz fontIDAndStruct width` is only called during active text-field layout/editing (NOT plain ui startOn), and calling `widthOfString:`/`boundsOfString:` needs the font's atsFont+`quartz textStyle` loaded (early calls fail "No gc in nil"). Test the name map directly (no editor): `quartz atsFont quartzNameForFontSpec: (| name = '<x-name>'. style = ''. |)`.
TESTING NOTE (learned the hard way): kill leftover test runs with `pkill -9 -f "MacOS/Self -s"` (matches BOTH shortcuts.snap AND ui1quartz.snap runs) — `pkill -f "shortcuts.snap"` MISSES ui1quartz.snap keepalive runs, which accumulate ~10 stale windows and make manual-click testing impossible. David authorized killing all Self once to recover.

## ✅ RESIZE REDRAW FIXED (May 26 2026, session 3 cont.) — COMMITTED ea830fe8
Resizing a ui1 window left content unchanged (OS stretched the old frame; ui1 never repainted at the new size). The Self event side was fine (verified by trace: boundsChanged kind=27 → 'configureNotify' decodes correctly, `platformWindow size` IS live/new, `ui windowChanged:` runs `world windowChanged`+`world draw`+`world display`, no errors). TWO things were stale, both on the quartz platformWindow display path:
1. The 8-bit `shadow` (created once at makeShadow/open) was never resized → offScreen→shadow copy clipped to old size.
2. The true-colour window context + its backing **IOSurface** (`quartzWindow gc`) is cached at open. The VM's `ensureBitmapContext()` (quartzWindow.mm:694) DOES rebuild the IOSurface at the new size — but only when `QDBeginCGContext_wrap` (mm:1476) is called again; the Self graf caches `gc` at `initialize` (`gc: beginContext`, quartz.self:5352) and never re-fetched. So ui1 blitted into the OLD-size IOSurface, which `check_carbon_events`'s `blitIOSurfaceToView` (mm:1350) then showed in the resized view. **No VM change needed** — re-fetching the gc triggers the rebuild.
FIX (Self-only, quartz.self): `ensureShadowSize` (on traits quartz platformWindow), called from `indexedContext` (so it runs during `update`'s offScreen→window copy, BEFORE the syncGraphics blit): when `shadow size != size`, `shadow delete. makeShadow` (resize shadow) AND `quartzWindow initialize` (re-run beginContext → QDBeginCGContext → ensureBitmapContext rebuilds IOSurface at new size + resets CTM). No-op for ui2 (shadow nil). Verified live by David ("Fixed!"). ui1quartz.snap rebaked.

## ⚠️ TESTING LESSON: GHOST WINDOWS (May 26 2026) — cost a LOT of time
`kill -9` of a Self Quartz process leaves its LAST RENDERED FRAME on screen as a dead, non-interactive ghost window (the IOSurface-backed NSWindow isn't torn down on SIGKILL; even with 0 Self processes a "Self World" frame persists). These accumulate across test runs and made screenshot-based testing give CONTRADICTORY results for ~an hour (I'd `screencapture -R` a stale correct-looking ghost while David resized a different broken live window). SYMPTOMS: David "I still see a window up, suspicious" / "all I see is a broken window" while my captures showed correct. RULES GOING FORWARD: (1) before each manual-test round, `pkill -9 -f "MacOS/Self"` AND confirm `ps` shows 0, but KNOW ghosts may still be on screen — to clear them needs a window-server recomposite (Mission Control / `killall Dock` / David flicking spaces), not just the kill. (2) Launch exactly ONE window and `osascript activate` it (frontmost = the live one; anything behind is a ghost). (3) Diagnostic TRACES (printLine to the captured stdout) are immune to ghosting and far more reliable than screenshots for confirming behavior — prefer them. (4) Synthetic input (CGEventPost) is BLOCKED (Terminal lacks Accessibility), so manual clicks are required; keep the VM cycling (times-delay keepalive) or events don't pump.

## ✅ DRAG FIXED (state mask) + ⚠️ plane_mask/acetate is the next gap (May 26 2026) — drag COMMITTED 7f296c69
DRAG worked once the event `state` was translated to an X11 state mask. Bug: ui1's modal drag loop (uiBody followCursorWhile: → cursor while:Do:) runs while `cursor leftButtonDown` = `state && (xlib button1Mask = 256)`; I'd put the raw Mac mouse-chord bit (left=1) in state, so `1 && 256 = 0` → button seen as up → loop never moved the body. Clicks were fine (don't use the mask). FIX (quartz.self): `xStateMaskFromChord: chord Modifiers: mods` on the quartz event maps Mac chord (bit0 left/bit1 right/bit2 middle) + Carbon modifiers → X11 mask (button1=256/button2=512/button3=1024, shift=1/control=4/mod1=8/lock=2); used for both mouse and key `state`. NB **`&&`/`||` are BITWISE on Self integers** (that's how `state && button1Mask` works). Verified live by David. ui1quartz.snap rebaked.
**NEXT GAP — plane_mask / acetate (the during-drag artifacts):** while dragging, the other bodies (evaluator) vanish and the background is wrong. Cause: the drag's transient redraw uses the X **plane-mask "acetate" plane** — `eraseAcetate: rect` = `windowBitmap planeMask: movingPlaneMask. windowBitmap fillRectangle: rect Color: uiColors transparent` (uiWorld.self:608), and arrows use arrow0Mask/arrow1Mask similarly (uiWorld.self:627/644/839). On X the plane mask restricts writes to reserved bit-planes so transient drawing erases without touching the underlying image; my `plane_mask:` (traits quartz context) is a **no-op**, so the masked fill overwrites the whole rect (wipes underlying bodies + wrong bg) until the drop's full `world display` repairs it. FIX NEEDED = real bit-plane-masked indexed rendering: `plane_mask: m` must make subsequent draws do read-modify-write `(new & m) | (old & ~m)` on the 8-bit buffer. CG has no plane masking → needs a VM primitive (masked fill/copy on the CGBitmapContext bytes) + routing the context draw ops through it when plane_mask != all-ones. This is the long-flagged "arrow planes / acetate / plane_mask" indexed-graphics work; SUBSTANTIAL. Drag/arrows are the main consumers (also XOR rubber-banding via function:gxXor, still a no-op).
SESSION 3 SUMMARY (all committed on AVP-port): 12b1135a caret/font, ea830fe8 resize, 7f296c69 drag — atop e9227372 input, 9b3c4241 flush+text, 50f98e7c/05a4e83a foundation. ui1 on Quartz now: renders in colour, mouse+keyboard input (point-to-type), correct caret, resize redraw, body drag. Remaining: plane_mask/acetate (drag/arrow transient redraw), XOR rubber-banding, menus/double-click/close untested. TEST with RelWithDebInfo VM (still prints "debug version" banner but is -O2; full Release config = no debug aids); manual clicks only (no Accessibility for synth); ONE window + osascript activate + `pkill -9 -f "MacOS/Self"` (ghosts may linger -- need Mission Control/recomposite to clear).

## ✅ PLANE-MASK / ACETATE DONE (May 27 2026, session 4) — COMMITTED 7f5b2899 (local on AVP-port, NOT pushed)
Fixed the during-drag artifacts (other bodies vanish + wrong bg) by giving the Quartz indexed path real X-style plane masking + raster functions. KEY MECHANISM understood: on X, a drawable's `gc = (| display gc)` (xlib.self:2342) — ONE shared GC, so `windowBitmap planeMask:` and `bod graphic gc` are the same object. On Quartz contexts are per-object, so the plane mask/function are read from the DESTINATION context (where `windowBitmap planeMask:` set it: windowBitmap image=platformWindow, `platformWindow gc`→shadow ctx). The drag draws a reduced world into the STATIONARY planes (mask 7) + the moving body into the MOVING planes (movingPlaneMask=56) + arrows into arrow planes (64/128); colormap0/colormap1 (both have `win`+768B CLUT, install swaps window CLUT — verified) map the combined index. With plane_mask a no-op, eraseAcetate's full-rect fill wiped the underlying bodies and the shadow held full-8-bit values that the reduced colormap mis-mapped → the artifacts. Masked writes fix it; the colormap + display paths already worked (drag already moved the body).
- **2 new VM prims** (quartzPrims.cpp, after CopyIndexedArea_wrap): `FillIndexedAreaMasked_wrap(ctx,x,top,w,h,colorIndex,planeMask,func)` and `CopyIndexedAreaMasked_wrap(src,dst,sx,sy,w,h,dx,dy,planeMask,func)` — per-byte `(xRasterOp(func,src,dst) & m) | (dst & ~m)` on the 8-bit CGBitmapContext. Shared `xRasterOp` static covers all 16 X GXfunctions (gxClear=0/gxAnd=1/gxCopy=3/gxXor=6/gxOr=7…). Top-down logical coords, both-ends clipping — matches fillRectX (verified the bottom-up storage geometry coincides). Template decls in quartzTemplates.self (after copyIndexedAreaTo): `fillIndexedMaskedX:Y:Width:Height:Index:Mask:Function:` + `copyIndexedMaskedAreaTo:SrcX:SrcY:Width:Height:DestX:DestY:Mask:Function:`. **GOTCHA: no apostrophes inside quartzTemplates.self** — the whole body is one `From: '…'` string; "ui1's" silently terminated the string → "No 's' slot" + my prims skipped. Regenerated glue + rebuilt RelWithDebInfo (BUILD SUCCEEDED).
- **Self (quartz.self):** `globals quartz context` now has data slots `indexFG <- 0. planeMaskByte <- 255. rasterFn <- 3.` (every deadCopy gets them; ui2/truecolour ctxs carry them harmlessly). `foreground8Bit:` also records `indexFG: cme index`; `plane_mask: m`→`planeMaskByte: m`; `function: f`→`rasterFn: f`. New `fillRectIntegerX:Y:Width:Height:` routes: `(planeMaskByte=255) && [rasterFn=3]` → fast `fillRectX:` else `fillIndexedMaskedX:…`. `fillRectangle:` + `drawPoint:GC:` go through it. `indexedPixmap copyArea:To:At:GC:` reads `destImage indexedContext`'s planeMaskByte/rasterFn and routes fast `copyIndexedAreaTo:` vs `copyIndexedMaskedAreaTo:`. (`&&` takes a BLOCK on Self booleans: `(a) && [b]`.)
- **VERIFIED (programmatic, all green):** prims A=255/C=199/D=255 exactly as predicted; on the real ui1 (resume ui1quartz.snap + `ui startOn: ''`): normal render unregressed (shadow gc planeMaskByte=255/rasterFn=3 → fast path), `eraseAcetate` sets mask=56 + masked fill runs clean, masked copy (graphic copyTo: windowBitmap under acetate) clean, `prepareToDrawOnAll` resets to 255, full redisplay clean — NO errors. colormap0/1 both win-set + 768B CLUT; colormap1 install swaps window currentCLUT.
- **NOT YET verified: the VISUAL drag** (synthetic events blocked → needs David's real click-drag of a body: confirm other bodies STAY visible + bg correct during the drag, snaps back correctly on drop). NOT committed yet (pattern: David confirms live first). Snapshot ui1quartz.snap REBAKED with everything (shortcuts.snap + window.self + quartz.self + quartz_wrappers.self runScript). Backup /tmp/ui1quartz.snap.bak3. Uncommitted files: vm64/src/any/prims/quartzPrims.cpp, objects/glue/quartzTemplates.self + regenerated quartz.primMaker.hh/quartz_wrappers.self, objects/graphics/quartz.self.
- **Scope note:** body-drag essentials are masked fillRect + masked copyArea (done). ARROW-grab transient redraw also uses fillPolygon/drawLines under arrow planes — those CG-shape draws are NOT yet plane-masked (would need a coverage-mask merge; deferred). XOR rubber-banding (function:gxXor) now stores rasterFn=6 and the prims implement xor, so masked xor fills/copies work, but plain CG line/stroke xor is still copy-mode.

### FIRST DRAG TEST (David, May 27) → trail bug → masked fillPolygon (scratch+merge), David chose "proper"
David's live drag: body moved + clean drop, but during drag it left **a trail of its own colour** ("as if motion blur between two frames is used for ALL frames"). ROOT CAUSE: `preferences blurBodies` defaults TRUE (defaultPreferences.self:106); moveLoop's blur does `fillPolygon: blur Pattern: blurBody Color: uiColors body` → drawing.self `fillPolygon:Color:` → `image fillPolygon:…GC:` → CG **path fill**, which writes full bytes and IGNORES the plane mask (only my masked fill/copy honour it). So every frame smeared an unmasked body-colour polygon into the moving plane that never got cleared. (masked body-copy + acetate-erase themselves work → clean drop.) This is the general gap: CG SHAPE draws (fillPolygon/lines/arcs/strings) bypass plane masking.
FIX (David chose proper over "disable blur on Quartz"): **scratch+merge** — Self-only, NO VM rebuild (reuses copyIndexedAreaTo: + the session-4 copyIndexedMaskedAreaTo: prim). On `globals quartz indexedPixmap`: added a `scratch` slot (lazy same-size indexed context). On `traits quartz indexedPixmap`: `maskedScratch` (lazy create + AA-off via prim + inverted text matrix); **`withMaskedGC: gc Do: drawBlock`** — fast path (mask=255 & fn=copy) draws straight into `context`; masked path preloads scratch with our bytes (`context copyIndexedAreaTo: sc` full buffer), presets scratch gray = `gc indexFG/255`, runs drawBlock into sc, then merges `sc copyIndexedMaskedAreaTo: context Mask: gc planeMaskByte Function: gc rasterFn` (untouched scratch px == our bytes → merge no-op there, so only the shape's masked planes change); `delete` frees scratch. Overrode `fillPolygonIntegerXs:Ys:GC:` on the indexedPixmap → `withMaskedGC: gc Do: [|:c| c fillPolygonIntegerXs: xs Ys: ys]` (shadows the bare-drawable direct version; ui2 truecolour stays fast). The blur reaches it via platformWindow forwarding fillPolygon:GC:→shadow→fillPolygonIntegerXs:Ys:GC:. NOTE gc here == self indexedContext (fills use the dest's own gc, unlike copyArea). This `withMaskedGC:Do:` is the reusable hook to later mask lines/arcs/strings (arrows, XOR).
VERIFIED programmatically (real shadow ctx): base=7, masked draw inside=(200&56)|(7&~56)=15, outside=7 untouched — withMaskedGC: scratch+merge works. **Then VERIFIED LIVE by David ("looks good")**: colour body drag repaints behind the body, blur smear is transient (no trail), clean drop. ALL session-4 work COMMITTED 7f5b2899 (objects/graphics/quartz.self, objects/glue/quartzTemplates.self + regen quartz.primMaker.hh/quartz_wrappers.self, vm64/src/any/prims/quartzPrims.cpp) — LOCAL on AVP-port, NOT pushed to the fork remote `dmu-works-on-Self` (David gates pushes). ui1quartz.snap rebaked (backups /tmp/ui1quartz.snap.bak3/.bak4). REPL GOTCHA (cost a retry): a multi-line `[|t| …]value.` block piped to stdin gets split per line (temps "No slot in shell"); put the whole block on ONE line.
NEXT (deferred): masked CG lines/arcs/strings via the same withMaskedGC:Do: hook (arrows during arrow-grab, full XOR rubber-banding); stippled fills (blur is solid not stippled); menus/double-click/window-close still untested.


========================================
## project_vm64_regen_xcode_closed.md
========================================

---
name: project_vm64_regen_xcode_closed
description: "Regenerate the vm64 Xcode project with Xcode quit, or it clobbers post-gen scheme patches."
metadata: 
  node_type: memory
  type: project
  originSessionId: 5553fe1e-0f98-41c6-8665-c10ae57c0e38
---

Run `vm64/configure.sh` (any of `macos|visionos|xcframework`) with **Xcode quit**. The generated `Self.xcscheme` is post-processed by `vm64/fix-xcode-paths.py` for things CMake can't express (e.g. Console = "Xcode (with Standard Input)" = `consoleMode="0"` + `structuredConsoleMode="2"` on the LaunchAction). `OS_ACTIVITY_MODE=disable` comes from CMake itself (`XCODE_SCHEME_ENVIRONMENT` in `cmake/mac_osx.cmake`).

**Why:** configure.sh writes the scheme in two steps — CMake writes it first (without the patches), then fix-xcode-paths.py edits it. A *live* Xcode notices the CMake intermediate, reloads it into memory, and later saves its stale copy back over the patch. Can't be fixed by an atomic write (CMake's unpatched write happens first); the reliable rule is just to regen with Xcode closed. Same exposure applies to the `.pbxproj` source-path rewrite.

Related: [[feedback_vm64_xcode_build_dirs]]. The desktop quartz executable is `Self` (target `Self`, binary `cmake-build-xcode-macos/Debug/Self.app/Contents/MacOS/Self`), not `SelfVM` (that name is only the static-library `OUTPUT_NAME`).


========================================
## project_window_reincarnation_backend.md
========================================

---
name: project_window_reincarnation_backend
description: "ui2 snapshot reopen chose backend by OS (always Quartz on mac); fixed to honor each window's original X/Quartz backend with a Quartz fallback."
metadata: 
  node_type: memory
  type: project
  originSessionId: ed201c7f-353e-493b-ae64-0d776f623055
---

Bug: opening a snapshot containing an X window on macOS reincarnated it as a Quartz window. `worldMorph reopen` (objects/ui2/worldMorph.self) rebuilds each window via `platformSpecificNameFor:` + `windowCanvasPrototypeForDisplay:`, both of which hardcoded macOS→Quartz. That macOS→Quartz line in `windowCanvasPrototypeForDisplay:` came from commit ef01c968 ("Fix Morphic desktop failing to open when XQuartz DISPLAY is set") — reverting it naively reintroduces that bug, so the fix must keep fresh-open defaults while making reincarnation backend-aware.

STATUS: COMMITTED 2026-05-23, now `e6af909e` on AVP-port (was `55610719` before the 2026-05-25 history rewrite that moved whole-method comments into slot annotations). Touches objects/ui2/{canvas,quartzCanvas,worldMorph}.self. Patch still at `/Users/ungar/self/window-reincarnation-backend.patch`. NOTE: applied on top of the same-day pre-2020 classic-world import (`7695dbcf`/ merge now `95d47922`, was `27f1eddb`), which had reverted worldMorph.self — so this commit's two rewritten methods supersede the reverted pre-ef01c968 `windowCanvasPrototypeForDisplay:` (`Then:[self]`) and re-add `--resetXDisplays` handling.

Fix (2026-05, AVP-port): global routing by display name + graceful fallback.
- Added `reincarnationDisplayName` to both canvas traits: xWindowCanvas → `display name` (an X canvas's display `name` is a stored slot, survives snapshot even when the connection is dead); quartzWindowCanvas → literal `'quartz'`.
- GOTCHA that forced the new accessor: a quartz canvas's `displayName` returns `display name` = the window-proxy's **title**, NOT 'quartz' (quartz `display` = `platformWindow display` = the quartzWindow). So displayName can't discriminate backend.
- `reopen` now passes `wc reincarnationDisplayName`.
- `platformSpecificNameFor:` no longer forces Quartz on mac; 'quartz' stays Quartz on mac / →'' (default X) on X-only hosts; `--resetXDisplays` still maps X names to $DISPLAY.
- `windowCanvasPrototypeForDisplay:` routes by name: 'quartz' or empty-on-mac → Quartz, else X11; on macOS if the X display can't be opened it prints "No X11/XQuartz display available, falling back to Quartz." and uses Quartz.
- New `canOpenXDisplay:` probe = non-interactive `xlib display open:IfFail:` (avoids openDisplayNamed:'s interactive userQuery loop).

Takes effect only in images that have filed in the new traits; old snapshots saved before the fix won't have `reincarnationDisplayName`. Relates to [[project_xdrag_x11_works]].


========================================
## project_x_copy_editor_world.md
========================================

---
name: project_x_copy_editor_world
description: "Why copy-from-an-X-window didn't reach the Mac pasteboard, and the editor-world fix plus the XQuartz Cmd-key interception behind it."
metadata: 
  node_type: memory
  type: project
  originSessionId: 5e829c65-e8fc-4e88-aee3-371d5d0436a8
---

Copy from a Self X window didn't paste into Mac apps. Two independent causes:

1. **Code (fixed on AVP-port):** `editorRowMorph copy_cmd`/`paste_cmd` (editorMorphs.self) used the desktop-bound `ui2_textBuffer contents:`/`contents`, which only touch the system pasteboard via `desktop w` (the global Quartz world). When editing in an X world opened by `desktop openNewWorldOnDisplay: ':0'`, `desktop isOpen` is false and `desktop w` is nil, so the `storeToClipboard:` (→ pasteboard) was skipped; copy only set in-VM `myContents`. Fix: route through the editor's *own* `world` using the existing `setContentsTo:ForWorld:` / `contentsForWorld:` variants (as `ui2_textField copy_cmd` already did). Changed 4 sites: editorMorphs.self copy_cmd, paste_cmd, the Paste-menu enable in buildSelfMenu, and the ctrl-K kill in larsText.self:662. Validated live: `<Xcanvas> display storeToClipboard:` → xlib (b72cb923) → `quartz window storeToClipboard:` → put_scrap_text → NSPasteboard. See [[project_x11_clipboard_nspasteboard]].

2. **Environment (not code):** XQuartz "Enable key equivalents under X11" swallows Cmd-combos. Proven by logging `ui2XEvent setFromKeyPressedOrReleased:`: with key-equiv ON, pressing Cmd-C delivered only the Command key (keycode 63) to Self — never the `c`. With `enable_key_equivalents=0` (restart XQuartz to honor it), Cmd-C arrives as keycode 16 `state=16` (mod2) and dispatches `handlePressWithCommandDown:`→`handlePressWithMetaDown:`→`copy_cmd`. **Confirmed end-to-end** (Cmd-C in an X window → Mac app paste works). `quartz-wm` does NOT grab Cmd-C; the only grabber was the XQuartz menu key-equivalents. This same pref is what's needed for dmu's future Cmd-M (instead of macOS minimize). The pref is all-or-nothing; no per-shortcut control.

Debugging note: validated by driving the running VM's console REPL through a fifo (`Self -s A.snap < fifo`), redefining methods live with `_AddSlots:`, checking `pbpaste`. Gotcha: an `_AddSlots:` redefinition of a method with locals must re-declare them (`( | wc | ... )`) or you get "No 'wc:' slot found" — a probe bug, not a real one.

**Done (uncommitted on AVP-port):** readme.md now has a "Running the UI under X11 (XQuartz) on macOS" section (motivation incl. ui1 = Chang & Ungar "Animation: From Cartoons to the UI", UIST'93, 2004 Lasting Impact Award; install; `enable_key_equivalents -bool false`; per-tab settings table; $DISPLAY + `:0`-fallback explanation; copy/paste note). New `desktop` open API in desktop.self: `open` now tries X (→ `openOnX11`); `xDisplayName` = `os environmentAt: 'DISPLAY' IfFail: ':0'`; `openOnQuartz`/`openOnX11`; `openNewWorldOnQuartz`/`openNewWorldOnX11` (left `openNewWorld` Quartz-default to protect korz/us tests). worldMorph.self `windowCanvasPrototypeForDisplay:` now: on macOS, if X unopenable, `startXQuartzAndCanOpen:` shells out `os command: 'open -a XQuartz'` (BACKUP to launchd $DISPLAY auto-start) printing "Starting X11 (XQuartz)...", retries 6×700ms, else `noteXFallbackToReadmeOnce` (once-per-session flag `desktop xFallbackNoticeShown`) → Quartz. Skipped when `snapshotAction commandLine includes: '-headless'`. ui1 8-bit messages in ui.self point to the readme. All 4 files file-in clean (verified via `Self -s A.snap -f <file>`); `desktop xDisplayName` returns the launchd socket.

**Verified (the "not yets" are now resolved):** Both former `(?)` settings are *preferences*, not requirements. Empirically (key-event log in an X11 window): `option_sends_alt=on` makes Option send mod1/Alt — Option+RightArrow arrives as keycode 132 with state=8, routing to `handlePressWithAltDown:`→`handleMediumArrowPress:` (Self uses Alt only for Alt+arrow and Alt+Enter); `sync_keymap=off` delivers normal chars correctly. readme updated: rows say "preference", and a note clarifies only `enable_key_equivalents` off is always required, Emulate-three-button is for ANY X11 UI (ui1 AND ui2 use middle/right) unless you have a 3-button mouse, and 256-color/8-bit is ui1-only. Auto-launch verified end-to-end earlier: `desktop open` with XQuartz cold opened an X11 window (launchd $DISPLAY auto-start; the shell-out backup + "Starting X11" message only fire when launchd can't). readme edits (the two rows + corrected note) are UNCOMMITTED on top of 79e76ef7.

Build note: macOS build dir was reorganized to `cmake-build-xcode-macos` (via `vm64/configure.sh macos` + `vm64/CMakePresets.json`, replacing `cmake-xcode.sh`); a "missing vmDate file" failure was stale pre-reconfigure state — builds clean after reconfigure.


========================================
## project_x_horizontal_scroll.md
========================================

---
name: x-horizontal-scroll-revert
description: "Reverted X11 horizontal (two-finger) scroll fix — buttons 6/7 -> wheelMovedInX in xEvents.self; patch saved, not in tree."
metadata: 
  node_type: memory
  type: project
  originSessionId: 833ee8c2-4713-48da-8520-9236f2979267
---

X delivers horizontal trackpad scroll as buttons **6/7** (vertical = 4/5). In `objects/ui2/xEvents.self`, `setFromButtonPress:`/`setFromButtonRelease:` only mapped 4/5 -> `wheelMovedInY`, so 6/7 fell through to `'someMouseDown'`/`'someMouseUp'`, which `handMorph.self:477` can't dispatch -> "got unknown event" spam and no horizontal scroll. The image already dispatches `wheelMovedInX` (handMorph:466, `worldMorph wheelMovedInX:`), so only the X-translation arm was missing.

**Fix (COMMITTED 2026-05-23, now `6951ced6` on AVP-port — was `ea82e1ab` before the 2026-05-25 comment-into-annotation history rewrite; patch still at `~/self/x-horizontal-scroll.patch`).** Add a 6/7 arm beside each 4/5 arm:
- `setFromButtonPress:` — `If: [ (6 = b) || [7 = b] ] Then: [ type: 'ignore'. wheelDelta: (b = 6 ifTrue: 1 False: -1). ]`
- `setFromButtonRelease:` — `If: [ (6 = b) || [7 = b] ] Then: [ type: 'wheelMovedInX'. wheelDelta: (b = 6 ifTrue: 1 False: -1) * 3. ]`

Caveats: image-source change (needs world re-file/rebuild, not a VM xcodebuild). Direction sign `b=6 -> +1` is a guess at X's tilt convention — flip if horizontal scrolls backwards. The added `case` arity (5 conditions + Else) is supported (`objects/core/generatedCases.self`).

Related: the X11 modifier->button click fix (control->middle, option->middle, command->right) landed in commit `f4a41287 "fix mouse buttons on X11"` (`objects/glue/xlib_glue.cpp`, `remapModifierClick`). Two-finger=Button3->middle and command=Mod2 were tried there and reverted because Button3 remap broke 3-button mice and two-finger scrolling. See [[comment-attribution]] for house style; XQuartz delivers Command as Mod2, Option as Mod1.


========================================
## project_x11_clipboard_nspasteboard.md
========================================

---
name: project_x11_clipboard_nspasteboard
description: X11-window copy/paste fix — route X11 clipboard through native NSPasteboard instead of X cut buffers (macOS-only).
metadata: 
  node_type: memory
  type: project
  originSessionId: 455b77f5-4882-47a7-8364-2709f1284682
---

X11 windows failed to copy/paste with Quartz windows and Mac apps because the X11 backend used the deprecated X **cut-buffer** protocol (`XStoreBytes`/`XFetchBytes`, via `xStoreBytes`/`xFetchBytes`). XQuartz bridges the X11 **CLIPBOARD selection** ↔ macOS `NSPasteboard`, but NOT cut buffers, so X11 text never reached the shared Mac pasteboard. Quartz windows use `NSPasteboard` directly (`QuartzWindow::get_scrap_text`/`put_scrap_text`), so they always worked.

**Fix (chosen May 2026, Option A):** the four `traits xlib display` clipboard methods in `objects/graphics/xlib.self` (`fetchFromClipboard`, `fetchFromClipboardIfFail:`, `storeToClipboard:`, `storeToClipboard:IfFail:`) now delegate to `quartz window` (the prototype), reusing Quartz's NSPasteboard path + Mac newline mapping. The clipboard methods on `traits quartz window` touch no live-window state, so sending to the prototype is safe.

**Why:** smallest change; makes X11 and Quartz windows share one consistent system clipboard. Both backends are compiled into the macOS build (`SELF_QUARTZ` + `SELF_X11` both default ON, `vm64/cmake/common.cmake`), so the quartz primitive is always present.

**Caveat / how to apply:** macOS-only. On real Linux X11 the `quartz` global doesn't exist, so calling clipboard there would error (Linux would need a fallback or the ICCCM selection protocol — Option B, not built). The lower-level `xStoreBytes`/`xFetchBytes` wrappers were left intact. This is a pure `.self` change (no VM rebuild) — re-file the xlib module into the world to test. Related: [[project_xdrag_x11_works]].


========================================
## project_x11_fallback_not_build_regression.md
========================================

---
name: ""
metadata: 
  node_type: memory
  originSessionId: a94c4180-f96f-4279-9df4-1ef34a688e1d
---

The runtime message `No X11/XQuartz display available, falling back to Quartz` (from `objects/ui2/worldMorph.self` `windowCanvasPrototypeForDisplay:`/`canOpenXDisplay:`, code dmu&claude 5/2026) is NOT a build regression. The Xcode VM has X11 compiled in whenever `SELF_X11=ON` (default since [[project_x_horizontal_scroll]]'s lineage, fix 0a9c2a10): cache `SELF_X11:BOOL=ON`, `XLIB` defined in project.pbxproj, binaries link libX11/libXext.

**Why:** The message fires because `xlib display open: dispName` failed at runtime. On macOS a bare `:0` only connects to `/tmp/.X11-unix/X0`, which exists only once XQuartz is running — and `:0` does NOT trigger launchd to auto-start XQuartz. Only opening the launchd `$DISPLAY` path (e.g. `/var/run/com.apple.launchd.XXX/org.xquartz:0`) auto-launches XQuartz.

**How to apply:** Before suspecting the build, check `pgrep Xquartz` and whether the requested display is reachable (`/opt/X11/bin/xdpyinfo -display :0`). Fixes: `open -a XQuartz` (or probe `$DISPLAY` once) then `:0` works, or call `openNewWorldOnDisplay:` with the launchd `$DISPLAY` name (auto-starts XQuartz). Passing an empty display name on macOS deliberately routes to Quartz. Verify-build steps and X11 linkage relate to [[feedback_vm64_xcode_build_dirs]] and [[project_xdrag_x11_works]].


========================================
## project_xcode_edit_symlink_cmake_fix.md
========================================

---
name: project_xcode_edit_symlink_cmake_fix
description: "The 'cannot edit in Xcode' vm64 bug is fixed in CMake itself (realpath sources, keep vm64 include dirs); don't regress it."
metadata: 
  node_type: memory
  type: project
  originSessionId: 7ebed531-efd4-40f8-954d-a92561a27c5c
---

The "cannot edit in Xcode" regression (Xcode refuses to edit / breaks the symlink mirror) for vm64 is now fixed **inside `vm64/CMakeLists.txt`**, not just by the post-gen `fix-xcode-paths.py` rewrite that kept regressing.

vm64/src/ is ~350 symlinks into vm/src/. The fix (`resolve_symlinks_in_list` macro): realpath-resolve the **source file lists** (`SRC_src`, `SRC_glue`) so the Xcode project references the real vm/src files (editable; writes go to the real file). Because CMake emits this, it survives every regeneration **including Xcode's ZERO_CHECK rerun** — that ZERO_CHECK regen (triggered when CMakeLists/cache changes) is what silently reverted the old fix-xcode-paths.py rewrite.

**Critical, do not break:** `include_directories_from_src` must use the **vm64/src (symlink) paths**, NOT the resolved real paths. vm64/src holds 64-bit-specific headers (`config.hh`, `types.hh`, ...) that are REAL distinct files shadowing the 32-bit originals in vm/src. If the header search path resolves to vm/src, the PCH picks up the 32-bit config.hh → `error: 64bit not supported yet`. So: vm64 paths captured into `SRC_src_inc`/`SRC_glue_inc` before realpath, fed to `include_directories_from_src(SRC_inc)`.

Verified: macOS Debug `cmake-build-xcode` builds clean (May 2026). All five Xcode dirs regenerated: cmake-build-xcode, cmake-build-xcode-release, cmake-build-visionos-xcode, cmake-build-xcframework/{xros,xrsimulator}.

`fix-xcode-paths.py` is now only needed for the console-stdin scheme patch (REPL); its path rewrite is a redundant backstop. The console patch still reverts on a bare ZERO_CHECK regen (no CMake property for it) — re-run `cmake-xcode.sh` to restore it. Related: [[project_vm64_regen_xcode_closed]], [[feedback_vm64_xcode_build_dirs]].


========================================
## project_xdrag_x11_works.md
========================================

---
name: project_xdrag_x11_works
description: "ui2 cross-window morph drag on X11 isn't broken — it needs a VM built with SELF_X11=ON; a stale X11-off binary lacks the grab glue and breaks the handoff."
metadata: 
  node_type: memory
  type: project
  originSessionId: bb05c565-39ea-47df-97b6-ab016f0a8b30
---

Cross-window morph drag in the ui2 desktop (drag a morph from one window into another) works on X11. On 2026-05-22 it appeared "broken/regressed," but a freshly-built Debug VM did it correctly with no code change.

**Why:** the X11 grab glue (`XGrabPointer`/`XUngrabPointer` via `objects/graphics/xlib.self` grabPointer/ungrabPointer + `objects/glue/xlib_glue.cpp`) and the X enter/leave handling are compiled only when `SELF_X11=ON`. A binary built before commit `0a9c2a10` ("default to include X11", 2026-05-21) — or with X11 off — has no grab primitives, so the handoff has no pointer grab to keep motion flowing across the window boundary and the drag fails. X11 is now the default everywhere (`vm/cmake/common.cmake`: `SELF_X11_INIT ON`).

**How to apply:** if cross-window drag "regresses" on X11, suspect a stale/X11-off build before touching the Self handoff code. The Self-level handoff (`carryMorphsEntering:`/`carryMorphsLeaving:` in handMorph, `desktop.servers` keyed by serverName, windowEnter/windowLeave dispatch in worldMorph, setFromEnter/setFromLeave in xEvents) is intact. The four diagnostic seams (tagged `XDRAG`) were added and then reverted once the fresh build worked. The Quartz side is the genuinely-unimplemented case (no NSTrackingArea/mouseEntered/exited, no de-X11-ified transit keying) — see [[project_hostbridge_plan]] context.
