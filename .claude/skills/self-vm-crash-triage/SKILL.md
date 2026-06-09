---
name: self-vm-crash-triage
description: >
  Triage and diagnose crashes/hangs in the OurSelf/self64 Self VM (AVP-port, 64-bit
  interpreter-only). Use when the user pastes a Self VM crash trace, a crashomatic
  "Your choice:" menu, bad-oop errors ("memOop … not in any space", "doesn't point to
  a mark"), GC/scavenger faults (do_oop at 0x20, is_block at 0x10, consistencyCheck),
  or a VM hang/timer issue. Covers headless reproduction, lldb core inspection, the
  known root causes already fixed, and the gotchas of this codebase.
---

# Self VM crash triage (OurSelf/self64, AVP-port, 64-bit interpreter-only)

## 0. Orient first
- Branch `AVP-port`. Xcode build dir: `cmake-build-xcode-macos/` (project `Self.xcodeproj`, target `Self`). Configs: **Debug** (assertions on, slow) and **RelWithDebInfo** (faster, assertions still on). Scheme launch args: `-s Snapshot`; working dir = repo root.
- **Source files are symlinks.** Edit the `readlink -f` real path. Some resolve into `vm/src` (shared with the 32-bit tree) — don't change shared signatures (e.g. `frame_iterator.hh`); prefer editing the `.cpp` in `vm64/src`.
- **LSP noise:** every VM file shows `'_X.cpp.incl' file not found` + "unknown type name 'oop'/'frame'/…". That's the precompiled-header (`.incl`) build mechanism, *not* real errors. Ignore the LSP; trust `xcodebuild`.
- Per `~/.claude/CLAUDE.md`: Debug for short tests, Release/RelWithDebInfo for long. Use the Xcode dirs only (never a plain-cmake build-debug dir).

## 1. Build
```
cd cmake-build-xcode-macos && xcodebuild -project Self.xcodeproj -target Self -configuration RelWithDebInfo build 2>&1 | grep -E "error:|BUILD (SUCCEEDED|FAILED)"
```

## 2. Reproduce headless (no GUI needed — the boot/ui-cache crash is display-independent)
The VM reads Self code from stdin. From the repo root:
```
printf "<self expr>\n" | SELF_WORKING_DIR=. SELF_BASELINE_DIR=. OS_ACTIVITY_MODE=disable \
  ./cmake-build-xcode-macos/RelWithDebInfo/Self.app/Contents/MacOS/Self -s Snapshot > /tmp/run.log 2>&1
```
- Run it with `run_in_background: true`, then wait with an until-loop grepping `/tmp/run.log` for a success/crash marker, then `pkill -9 -f "RelWithDebInfo/Self.app"`.
- `< /dev/null` → EOF → it prints an stdin-EOF error, but boot already completed (look for `colormap series … done.` ×3 = booted past ui-cache init).
- **GC stress harness** (busy process + heavy allocation = the classic multi-process scavenge repro), as ONE line:
  ```
  | p | p: ping copyMessage: (message copy receiver: lobby Selector: 'printString') RepeatingInterval: 0. 3000000 do: [| :i | vector copySize: 1000 ]. p stop. 'STRESS_OK' printLine
  ```
- Crashomatic ("Your choice:") reads stdin; under `/dev/null` it loops "Illegal choice". Don't try to drive it headlessly — capture the diagnostic output that printed *before* it.

## 3. Read the crash
- **Two fatals interleaved?** The lower/second one is often secondary (e.g. a timer tick serviced during the dump). Find the FIRST real one.
- **Scavenger fault**: stack = `universe::scavenge → Processes/Process::scavenge_contents → Stack::scavenge_contents → FrameIterator → InterpreterIterator → OopScavenger::do_oop`. GC is walking a corrupt or missed interpreted frame. `do_oop(p=0x20)` ⇒ a NULL interpreter (`&interp->mi._map_oop` = NULL+0x20).
- **Interpreter fault**: `simpleLookup.cpp:40 assert(rcvr->verify_oop())` = a bad receiver reached a send; `interpret_method` zap-blocks `is_block` (fault ~0x10) = a bad `cloned_blocks` oop.
- **Bad-oop messages** come from `universe::verify_oop`: `memOop 0x… not in any space` / `doesn't point to a mark` = the oop is outside any live space (dangling / un-forwarded).
- **64-bit memory layout**: objects & maps live in a large region at `0x80_00000000+` (lldb reports it `r-x`). Freed/empty slots read as `0x0000000000000001` (SmallInt 0). A "valid-looking" `0x80…` oop that points into a `0x1`-filled gap = a **dangling/un-forwarded pointer**. Self process C-stacks are elsewhere (e.g. `0x6…`, `0x9…`, `0xc…`); interpreter activations live on those stacks.

## 4. lldb core inspection
- Get a core from the live, stopped process: in its lldb session run `process save-core /tmp/x.core`. **Never pick crashomatic "1" with a snapshot** — you'd persist a corrupt heap.
- Load: `lldb -c /tmp/x.core <…/RelWithDebInfo/Self.app/Contents/MacOS/Self>`.
- **dSYM must match** or typed reads return garbage: regen with `dsymutil <binary> -o <…/Self.app.dSYM>`; verify `dwarfdump --uuid <binary>` == `dwarfdump --uuid <dsym>`. (Bundle-dir mtime is misleading — check `…/Contents/Resources/DWARF/Self`.)
- Useful: `memory region <addr>`, `memory read -s8 -fx -c8 <addr>`, `expr -- ((interpreter*)<p>)->cloned_blocks`, compare regions of a bad vs a known-good oop.

## 5. Known root causes (already fixed on AVP-port — check these patterns first)
- **Dangling oops / GC corruption** (`6f9b3330`): the scavenger found interpreters only via the C-frame `sender()` chain (`Stack::frames_do`), which is unreliable on this interpreter-only port (the reason `active_interp_list` exists) → live interps missed → their slots dangle into freed heap after a scavenge. **Fix:** `Process::scavenge_contents` also scavenges every interp in the per-process `active_interp_list`. *If a new dangling-oop crash appears, ask whether some live-interpreter path still isn't covered by that list walk.*
- **Scavenger 0x20 NULL-deref** (`e801aad6`): `find_interpreter_for_frame` trusted `processes->stackFor()` (whose `isOnVMStack()` is literally "just a guess") and returned a spurious NULL. **Fix:** search `currentProcess` + the walked-process hint (`interp_lookup_hint_process`, set in `Stack::frames_do`) by `_my_frame` identity; `FrameIterator::do_interpreted` NULL-guards.
- **Clobbered crash dumps** (`e801aad6`): a timer tick during a dump fired a nested `must_be_in_self_thread` fatal. **Fix:** `is_in_self_thread()` uses the Mach-port identity (matching `forwarded_to_self_thread`); `fatal_handler()` blocks `SIGALRM`/`SIGVTALRM`.

## 6. Method (house rules)
- Don't reason >5 min without data — add **targeted** instrumentation (gated so it only fires on the bad case) and run it. Confirm the theory *before* writing the fix. REMOVE the instrumentation and restore asserts before the final commit.
- `find_interpreter_for_frame` is `currentProcess`-relative and **time-varying**: "findable now" ≠ "findable at the scavenge that mattered."
- A nested-process scavenge is single-threaded; if two adjacent identical lookups disagree, suspect an async signal (timer) between them.
- Comment-attribution house style: end inserted comment blocks with `// -- claude & dmu <month-number>/<year>`.

See memory `[[project_scavenger_interp_registry_bug]]` for the full diagnosis history of the GC fix.
