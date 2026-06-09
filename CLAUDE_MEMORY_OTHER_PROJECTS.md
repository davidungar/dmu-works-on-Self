# Claude memory — OTHER projects

Exported Wed May 27 13:01:49 PDT 2026
Curated memory notes from every Claude project dir EXCEPT this one (-Users-ungar-self-vms-OurSelf-self64, which is in CLAUDE_MEMORY_EXPORT.md).


############################################################
# PROJECT: -Users-ungar-code-separatingForInlining
############################################################

## INDEX (MEMORY.md)

- [2026-04-09 session](session_2026_04_09.md) — Pieces 2-5 of adaptive inlining, two critical bug fixes, validated baseline through 6-box, 9-box failure pending
- [2026-04-10 session](session_2026_04_10.md) — Up-level flattening attempt (reverted), headless test mode (built), moduleDictionary non-determinism found
- [Set checkbox defaults](feedback_checkbox_defaults.md) — Set flag defaults before manual tests
- [Box count clarity](feedback_box_counting.md) — Say exactly how many boxes, not "N-box"
- [No validation](feedback_no_validation.md) — Don't say "you're right", just fix
- [Test timing](feedback_test_timing.md) — Note how long tests take, debug vs optimized
- [No duplicate code](feedback_no_duplicate_code.md) — Add hook functions for platform variants, don't duplicate shared code
- [CLI test conventions](feedback_cli_tests.md) — Stop at stdin EOF (=PASS), don't rebuild unless source changed
- [2026-04-10 evening](session_2026_04_10_evening.md) — CLI target built, moduleDictionary bug = useDeoptStackRestoration + depth>=3
- [Bash permission syntax](feedback_bash_permissions.md) — Use prefix:* syntax, not glob patterns
- [2026-04-11 session](session_2026_04_11.md) — Up-level flattening bug at depth>=2, two fixes (receiver+map), at:IfAbsent: and asCharacter are the newly inlined methods
- [2026-04-11 afternoon](session_2026_04_11_afternoon.md) — Proxy methodHolder fix, allowUpLevelFlatteningInBlocks=true validated with 5-min soak
- [Clean up stale tasks](feedback_stale_tasks.md) — Delete tasks immediately when work direction changes
- [2026-04-11 Batch E](session_2026_04_11_batchE.md) — Phase 7.2/7.3 done, Phase 8 partial, needs build check + commit
- [Soak watermark](project_soak_watermark.md) — "outer mirs: 496 i: 5" = last output before deopt pop() crash


----- feedback_bash_permissions.md -----

---
name: Bash permission syntax
description: Claude Code Bash permission rules use prefix:wildcard syntax, not glob patterns
type: feedback
originSessionId: 206d5339-5a19-4a04-88be-fd3a0613f18d
---
Bash permission rules use `Bash(prefix:*)` for prefix matching, NOT glob patterns.
- `Bash(git:*)` matches commands starting with `git`
- `Bash(npm:*)` matches commands starting with `npm`
- `Bash(*)` allows all Bash commands
- `=` in the pattern is parsed as a parameter spec, not part of the command string
- Glob-style patterns like `Bash(/Users/*)` or `Bash(*Self_1*)` do NOT work

**Why:** Wasted significant time trying glob patterns that silently failed.

**How to apply:** When the user needs targeted Bash permissions, use the `prefix:*` syntax or just `Bash(*)`.


----- feedback_box_counting.md -----

---
name: Be clear about box counts vs config names
description: Don't use "7-box config" when 8 boxes are checked — say exactly how many boxes should be checked
type: feedback
originSessionId: 1b5e2553-39bb-44b5-8098-994433985c39
---
The "7-box validated config" actually has 8 UI boxes checked (the 7 flags plus useDeoptStackRestoration). Don't say "7-box" when telling the user what to test — say exactly how many boxes to check and which one(s) to leave unchecked.

**Why:** The naming is confusing and wastes time.

**How to apply:** When describing a test config, say "all 8 boxes checked, upLevelFlattening unchecked" or similar. Never use the internal "N-box" shorthand with the user.


----- feedback_checkbox_defaults.md -----

---
name: Set checkbox defaults before manual tests
description: Before every manual test, set AdaptiveInliningFlags defaults to match the test config so the user doesn't have to manually check boxes
type: feedback
originSessionId: 1b5e2553-39bb-44b5-8098-994433985c39
---
Before every manual test, set the AdaptiveInliningFlags defaults in code to match the desired test configuration. The user shouldn't have to manually check boxes each time.

**Why:** Manual checkbox setup is error-prone and tedious during iterative testing.

**How to apply:** When asking the user to test, first edit AdaptiveInliningFlags.swift to set the static var defaults appropriately, rebuild, THEN ask the user to test.


----- feedback_cli_tests.md -----

---
name: CLI test conventions
description: How to run CLI tests — watch for stdin EOF as success, don't rebuild unless source changed
type: feedback
originSessionId: 05f35845-32bc-4110-8920-6cc5f6cbbfba
---
When running CLI headless tests:
1. Watch for "EOF reached" in the output — stop the test at that point and count it as PASS (stdin EOF is expected and harmless in headless mode).
2. Don't rebuild (xcodebuild) automatically in test scripts unless source files were modified. Rebuilds are slow; do a manual rebuild only when needed.

**Why:** Test scripts were taking too long due to unnecessary rebuilds, and tests appeared to hang because stdin EOF wasn't being treated as the natural termination point.

**How to apply:** When running a CLI test, pipe output and stop at "EOF reached". Keep test scripts without the build step; rebuild manually before running if code changed.


----- feedback_no_duplicate_code.md -----

---
name: No duplicating shared code for platform variants
description: When adding platform-specific behavior, add a hook function called from shared code rather than duplicating the shared code
type: feedback
originSessionId: 05f35845-32bc-4110-8920-6cc5f6cbbfba
---
Don't duplicate shared code into platform-specific files to add a platform branch. Instead, add a small hook function (called from the shared code) with different implementations in each platform file.

**Why:** User corrected me when I duplicated `read_prim` from CommonFIleInterface.swift into CLI_FileInterface.swift just to add an EOF check. The right approach was adding `handleStdinEOFIfNeeded` as a hook called from the shared `read_prim`, with a no-op in SwiftUI_FileInterface and the real implementation in CLI_FileInterface.

**How to apply:** When CLI vs SwiftUI FileInterface (or similar split) needs different behavior in shared code, add a new method with a dummy/no-op in one variant and a real implementation in the other. Never copy-paste the shared method body.


----- feedback_no_validation.md -----

---
name: Don't validate criticism
description: When the user corrects an approach, skip "you're right" — just fix it silently
type: feedback
originSessionId: 1b5e2553-39bb-44b5-8098-994433985c39
---
When the user points out a problem with my approach, don't say "you're right" or validate the criticism. Just fix it.

**Why:** The user finds it annoying / patronizing.

**How to apply:** On correction, go straight to the fix. No preamble acknowledging the feedback.


----- feedback_stale_tasks.md -----

---
name: Clean up stale tasks promptly
description: Delete tasks immediately when work direction changes; never leave stale tasks visible
type: feedback
originSessionId: f7f00206-446b-4b23-b46f-f05835cf93d4
---
When the user redirects work (e.g., "stop with phase 7"), delete all tasks related to the abandoned work right away. Don't leave pending/in_progress tasks from a prior plan sitting around.

**Why:** Stale tasks clutter the user's view and create confusion about what's actually being worked on.

**How to apply:** Whenever work direction changes, immediately delete all tasks that no longer apply before starting the new work.


----- feedback_test_timing.md -----

---
name: Note test timing and build config
description: When running tests, note how long failing tests take to fail, and whether debug or optimized VM
type: feedback
originSessionId: 1b5e2553-39bb-44b5-8098-994433985c39
---
When running tests, note and report how long a failing test takes to fail. Also note whether the test is run with a debug or optimized VM build.

**Why:** Timing info helps distinguish "fast crash" from "long slow drift into failure." Debug vs optimized VM affects optimizer behavior and performance.

**How to apply:** When reporting test results or setting up tests, include timing and build config info.


----- project_soak_watermark.md -----

---
name: Soak test watermark for deopt stack underflow bug
description: Last progress marker before pop() crash — "outer mirs: 496 i: 5". Getting further means the bug is fixed.
type: project
originSessionId: f7f00206-446b-4b23-b46f-f05835cf93d4
---
## Deopt stack underflow bug — soak watermark

The transporter soak test crashes with `pop() on empty stack` in a baseline activation created by deopt. The method is `annotation.self:(274,64)`, specifically `parse:Field:SetUnparsedPart:IfFail:` at pc=38 doing an explicit-receiver send `if:Then:If:Then:Else:` (5 args).

**Last output before crash:** `outer mirs: 496 i: 5`

If a future soak gets past this point (higher numbers), the bug is fixed.

**Root cause hypothesis:** deopt inside an inlined body truncates the OPT stack to `inlinedFrameStackBases.first` but the valueStackMap doesn't restore the root method's pre-inlining stack values (receiver + args that were pushed before entering the inlined region). Diagnostic added in Deoptimizer.materializeBaselineCore to print the full deopt state when resumedStack is empty.


----- session_2026_04_09.md -----

---
name: 2026-04-09 session summary
description: Major adaptive inlining session — pieces 2-5, bug fixes, validated baseline through 6-box, 9-box failure pending investigation
type: project
originSessionId: a9c4361a-6f81-4429-829d-7641a57f3f24
---
## Session 2026-04-09: Adaptive inlining progress

Massive session covering pieces 2 through 5 of the "retire Klein branches / general block inlining" plan.

### Commits landed (chronological)
- `70fbc90` test fix: safepointDoesNotDeoptWhenNotSingleStepping
- `d129ea3` allowInliningOfBlockCreatingCallees flag
- `810f701` allowNestedBlocksInBlockCreatingCallees (depth-tracked)
- `5525c57` allowBranchesInBlockCreatingCallees (later reverted in bf06787)
- `a2ca7ee` piece 2: parser suppresses Klein branch generation under inlining engine
- `bf06787` piece 3: strip inliner Klein-branch handling
- `0d76c8c` OptimizerLogLevel enum + Picker UI
- `255e2b3` piece 4a: callee-activation proxy scaffolding
- `f12eb93` piece 4b: inliner emits proxy variants
- `3140961` piece 4c: NLR through inlined-frame proxy
- `4544903` piece 4d: locals coherency via proxy.locals routing
- `69bae92` default-on piece-4 flags
- `c9214ec` piece 5: deopt stack restoration via valueStackMap
- `70ec694` docs: lock in validated baseline
- `eef4746` **fix**: NLR walk crashes when block's lexicalParent OPT has deopted (deoptedFromOPT back-reference)
- `af71066` docs: 3-box moduleDictionary validated
- `6979942` **fix**: reject pushSelf + implicit-self sends in block bodies of explicit-receiver callees (conservative)
- `a8b953d` **fix**: proxy gets explicit receiver from synthesized slot (lifts conservative rejection)
- `b0c8da7` lift SmallInt prim specialization ban inside inlined callee bodies
- `70de958` profiling counters: bumpBaselineSends + bumpOptimizedOps
- `239c07d` docs: 6-box moduleDictionary validated
- `993539f` default useDeoptStackRestoration to true
- `5dc1005` raise maxRecursiveInliningDepth to 3
- `4d312ea` docs: record 9-box failure (depth uncertain)

### Validated baseline (as of end of session)
- **6-box** config passes moduleDictionary end-to-end: usePolymorphicInlining + allowInliningWithArgs + allowExplicitReceiverInlining + allowInliningOfBlockCreatingCallees + allowNestedBlocksInBlockCreatingCallees + useCalleeActivationProxy
- **9-box** (6-box + allowNLRInBlockCreatingCallees + allowLocalsAccessInBlockCreatingCallees + useDeoptStackRestoration) with depth possibly 3: KNOWN BAD (isPrefixOf: and ifNil:IfNotNil: nowhere)

### Pending at session end
- **7-box test running** (6-box + useDeoptStackRestoration, depth=3, NLR + locals flags unchecked). Result unknown — user went on break.
- **Why:** tests whether depth > 1 is safe with the validated 6-box flag set, isolating the NLR + locals flags.
- **If 7-box passes:** depth=3 is validated; the bug is in allowNLRInBlockCreatingCallees or allowLocalsAccessInBlockCreatingCallees. Bisect those two.
- **If 7-box fails:** depth > 1 has a problem, likely the proxy methodHolder issue (proxy carries the outer's methodHolder, not the nested callee's — at depth > 1 this divergence compounds and delegation lookups from blocks go wrong).

### Key bugs found and fixed
1. **NLR-after-deopt** (`eef4746`): block's lexicalParent is an OPT that deopted; orphan OPT not in caller chain. Fix: `Activation.deoptedFromOPT` back-reference + `chainFrameMatchesNLRTarget` helper.
2. **Wrong receiver in block bodies of explicit-receiver callees** (`6979942` + `a8b953d`): block's pushSelf reads from proxy's receiver which was the outer's, not the explicit one. Fix: proxy reads explicit receiver from the synthesized slot.

### Known remaining issues
- Proxy methodHolder is still the outer's — affects delegation lookups from blocks at depth > 1.
- 13 pre-existing Self_1Tests failures unrelated to inliner (parser tests, snapshot tests, etc.).


----- session_2026_04_10_evening.md -----

---
name: 2026-04-10 evening session — CLI target + moduleDictionary bisection
description: Built headless CLI target, bisected moduleDictionary failure to useDeoptStackRestoration + depth>=3
type: project
originSessionId: 05f35845-32bc-4110-8920-6cc5f6cbbfba
---
## Session 2026-04-10 evening: CLI target + bisection results

### CLI target built and working
- Created Self_1_CLI and Self_1_CLI Opt Xcode targets (user created targets, Claude did file separation)
- Split FileInterface into CLI_FileInterface, SwiftUI_FileInterface, CommonFIleInterface
- OutputStream moved from SwiftUI/ to OS_Interfaces/ with `#if !SELF_CLI` around Color
- Parser nodes, PrimitiveTable, ExecutionPTEs gated with `#if !SELF_CLI`
- Added `_Quit` primitive (prints to stderr, exits 0)
- CLI handles stdin EOF: exits cleanly when scheduler is idle via `handleStdinEOFIfNeeded` hook
- Added maxRecursiveInliningDepth as integer flag in HeadlessRunner

### Test scripts created
- `quitTest` — smoke test: runs `_Quit`
- `readSnapshotTest` — loads prePostFileIn snapshot + `_Quit`
- `schedulerStartTest` — loads snapshot, starts scheduler, watches for stdin EOF as pass
- `Xtest` — loads snapshot, starts scheduler, sends `desktop openNewWorldOnDisplay: ':0'` via named pipe
- `moduleDictTest` — moduleDictionary refill with optimized build (known to fail ~66s)

### moduleDictionary bisection results (2026-04-10)

**The bug requires exactly two conditions:**
1. `useDeoptStackRestoration = true`
2. `maxRecursiveInliningDepth >= 3`

`allowNLRInBlockCreatingCallees` is NOT required — earlier hypothesis was wrong.

| Config | Result | Time |
|--------|--------|------|
| all defaults (deopt+NLR, depth=3) | FAIL | 67s |
| NLR only (no deoptRestore) | PASS | 180s+ |
| deoptRestore only (no NLR) | FAIL | 68s |
| deopt+NLR, depth=1 | PASS | 180s+ |
| deopt+NLR, depth=2 | PASS | 180s+ |
| deopt+NLR, depth=3 | FAIL | 67s |

**Failure symptom:** `redo nowhere append: for debugging` — `append:` dispatched on character 'e' instead of a collection. The deopt stack restoration at depth 3 corrupts the receiver or stack frame, causing a method to see wrong receiver type after deoptimization.

**Why:** The `useDeoptStackRestoration` feature (piece 5, commit c9214ec) records slot indices in `DeoptInfo.valueStackMap` so the deoptimizer can reconstruct the baseline stack. At depth >= 3, the nested proxy chain's stack map entries likely get the wrong offsets, so after deopt the restored stack has corrupted values.

### Key architectural findings
- Snapshot format is build-specific — CLI can read/write its own but not GUI-built snapshots (serialization code changed)
- `prePostFileIn` snapshot works for all CLI tests (64,654 objects, ~400ms to reconstruct in optimized build)
- X11 desktop works from CLI via named pipe stdin


----- session_2026_04_10.md -----

---
name: 2026-04-10 session summary
description: Attempted piece 4d replacement with compile-time flattening, built headless test mode, discovered moduleDictionary test non-determinism
type: project
originSessionId: 1b5e2553-39bb-44b5-8098-994433985c39
---
## Session 2026-04-10: Up-level flattening + headless mode

### Key finding: moduleDictionary test is non-deterministic
The pre-session code (commit 40b6f84, the validated 7-box config) ALSO fails the long-running moduleDictionary test when retested. The test passed on 2026-04-09 but fails on 2026-04-10. This suggests timing-sensitive optimizer triggering — different scheduler ordering causes different methods to get hot, leading to different optimization decisions.

### Piece 4d replacement attempt
Explored replacing runtime proxy locals routing with compile-time up-level access flattening:
- Built infrastructure: inlining context stack (replacing single context), resolveLocalAccess/resolveLocalAssign helpers, collectBlockValueMethods, isBlockInScope tracking, pushSelf receiver inheritance for block value methods
- The Inliner changes caused regressions and were REVERTED — only safe scaffolding was committed
- Key blocker: block value method inlining requires adjusting the lookup context (receiver, methodHolder, activation map) to match block semantics. Without this, implicit-self sends dispatch against the wrong receiver.
- Committed as `5d6db6c`: allowUpLevelFlatteningInBlocks flag (defaults false), optimizer flag logging, UI toggle

### Headless test mode (uncommitted, in working tree)
Built a headless mode for running Self expressions from the command line:
- `HeadlessRunner.swift` — parses --headless and --flag args, runs expression on interpreter thread
- `FlieInterface.swift` — headless mode skips Terminal_IO_Redirector, routes output to real stdout/stderr
- `Self_1App.swift` — `AppLauncher` enum with @main replaces direct @main on Self_1App to intercept --headless before SwiftUI starts
- **Works from Terminal**, but Claude's Bash sandbox cannot launch .app bundles (process starts but main() never executes in sandbox)
- Usage: `Self_1.app/Contents/MacOS/Self_1 --headless "'/path/to/snap' _ReadSnapshot. [transporter moduleDictionary refill] time"`
- Flag overrides: `--flag useDeoptStackRestoration=false --headless "..."`
- Has debug trace file write in HeadlessRunner.run() — remove before committing

### Files with uncommitted changes
- `Self_1/HeadlessRunner.swift` (NEW)
- `Self_1/OS_Interfaces/FlieInterface.swift` (headless mode support)
- `Self_1/SwiftUI/Self_1App.swift` (AppLauncher entry point)

### Test results summary
- 8-box sched/X test (quick): PASSES with all original flags, no flattening
- 8-box + flattening flag at depth=1: PASSES
- 8-box + flattening flag at depth=3: FAILS (characterFor:IfFail: on vector, initDay:Msec: on integer)
- 8-box + flattening flag at depth=3 + forceDeopt: PASSES
- 7-box long moduleDictionary: FAILS (isPrefixOf:/ifNil:IfNotNil: — but pre-session code ALSO fails)

### Important process feedback saved
- Set checkbox defaults before manual tests (don't make user check boxes)
- Don't use "7-box" shorthand — say exactly how many boxes to check
- Don't validate criticism — just fix it
- Note test timing and debug/optimized build config
- Log flag state in debugger console


----- session_2026_04_11_afternoon.md -----

---
name: 2026-04-11 afternoon — proxy methodHolder fix, allowUpLevelFlatteningInBlocks=true validated
description: Fixed proxy methodHolder bug causing isPrefixOf:/ifNil:IfNotNil: nowhere errors; defaulted allowUpLevelFlatteningInBlocks to true; 5-min soak passed
type: project
originSessionId: b06361f7-e610-4a1c-8448-092ea33cf17d
---
## Session 2026-04-11 afternoon: proxy methodHolder fix

### Bug found and fixed (commit 01e9091)
- **Root cause**: `buildInlinedFrameProxy` set the proxy's `methodHolder` to the OPT's root method holder (line 455), not the inlined callee's method holder.
- **Effect**: blocks vivified inside inlined regions had wrong implicit-self lookup scope. `isPrefixOf:` (defined on the callee's method holder chain) couldn't be found — Self's error handler relayed `undefinedSelector:`, which sent `ifNil:IfNotNil:` on the parser object (also nowhere), creating a cascading error loop.
- **Fix**: extract methodHolder from `CachedPR.holderLocation` at compile time, pass it through `.inlinedFrameEnterWithProxy` as a new `methodHolder: Oop?` parameter, use it in `buildInlinedFrameProxy`.
- **Validation**: 5-minute optimized CLI soak with `allowUpLevelFlatteningInBlocks=true` passed with 0 errors (previously 155 errors by 3:30).

### Flags changed
- `allowUpLevelFlatteningInBlocks` defaulted to `true` — all inlining flags are now on by default.

### Diagnostics added
- `helpMeDebugLookupErrors` now prints: receiver description, map slot names, implicit/explicit, OPT/baseline, uptime since VM launch, 6-frame caller chain.
- `eval` in shell.swift: removed stale `/*await*/` comment.
- OptimizerInspectorView: replaced `.help()` with `toggleRow` captions to fix SwiftUI "Only unstyled text" warnings.

### Files modified (commit 01e9091)
- `Activation.swift` — enhanced redo diagnostics + vmLaunchUptime static
- `AdaptiveInliningFlags.swift` — allowUpLevelFlatteningInBlocks default true
- `Inliner.swift` — extract staticMethodHolder from CachedPR at both emission sites
- `OptInstruction.swift` — added methodHolder param to .inlinedFrameEnterWithProxy
- `OptimizedActivation.swift` — proxy uses callee's methodHolder
- `OptimizerInspectorView.swift` — .help() → toggleRow
- `shell.swift` — minor cleanup
- `OptimizerTests.swift` — updated test call sites for new param


----- session_2026_04_11_batchE.md -----

---
name: 2026-04-11 Batch E + block-value inlining + instrumentation
description: Batch E complete, block-value inlining (level-0 only) validated, depth=4, SIGUSR2 stats, live rate traces, deterministic Map IDs, fallback selector profiling
type: project
originSessionId: f7f00206-446b-4b23-b46f-f05835cf93d4
---
## Session 2026-04-11 — COMPLETE

### Batch E (Phases 7+8) — all committed
- Phase 7.1 vFrame parity (prior batches), 7.2 single-step, 7.3 breakpoints, Phase 8 policy/stats

### Block-value inlining (commits c23fbf3 → a465097)
- Removed blanket `isForBlock` guard in tryRecursiveInline
- New OptInstructions: pushSelfViaProxy, accessLocalViaProxy, assignLocalViaProxy
- Proxy's lexicalParent set from block's clonedBlockInfo.lexicalParent
- **Bug found**: calleeInfo.isForBlock doesn't mean receiver IS a block — non-block objects share block-shaped value methods via traits → nil lexicalParent → SIGTRAP
- **Fix**: only treat as block-inline when body has NO level >= 1 accesses (bodyHasUpLevelAccess check)
- **Result**: inlined ops 5.5M → 91.3M in full soak. Soak passes.
- Gated behind `allowBlockValueInlining` flag (default true after fix)

### Instrumentation added
- Deterministic Map IDs (useDeterministicMapIDs=true default)
- SIGUSR2 stats dump: `kill -USR2 <pid>`
- Inlined vs fallback send counters (totalInlinedOps, totalFallbackSends)
- Depth-limit rejection histogram + UI slider (1-10)
- Live rate traces in inspector (baseline/s, inlined/s, fallback/s)
- Fallback selector profiling (trackFallbackSelectors flag, orange Profiling zone in UI)
- Force deopt in red Danger zone

### Depth tuning
- Depth 4 captures all depth-related gains; 5-6 flat
- Remaining fallbacks are NOT depth-limited

### Fallback selector profile (30s snapshot at depth=4, before block inlining)
- value=1.78M, raiseError=1.23M, ifTrue:False:=912K, nil=821K
- value/value:/value:With: combined = 2.3M (now partially addressed by block-value inlining)
- ifTrue:False:/ifFalse: = 1.2M — blocked by single-PIC-entry guard (entries.count==1), needs polymorphic guard chains
- _Eq: = 175K — trivial prim to specialize

### Key architectural insight
- The `entries.count == 1` guard in tryRecursiveInline blocks ifTrue:False: inlining because both `true` and `false` hit the same PIC → 2 entries → rejected
- This is the next big performance target: polymorphic (2-target) inlining with guard chains

### Head commit: bf9c1fa on workingOnInlining


----- session_2026_04_11.md -----

---
name: 2026-04-11 session — up-level flattening bug investigation
description: Investigated allowUpLevelFlatteningInBlocks bug at depth>=2, two fixes applied (both correct but insufficient), inliner logging shows at:IfAbsent: and asCharacter as newly inlined methods
type: project
originSessionId: 206d5339-5a19-4a04-88be-fd3a0613f18d
---
## Session 2026-04-11: Up-level flattening investigation

### Bug characterization
- `allowUpLevelFlatteningInBlocks=true` + `depth>=2`: FAILS deterministically (~5-20s)
- `allowUpLevelFlatteningInBlocks=true` + `depth=1`: PASSES (300s soak)
- `allowUpLevelFlatteningInBlocks=false` + `depth=2`: PASSES (120s soak)
- `forceDeoptOnEverySafePoint=true` with the flag: ALSO FAILS — bug is in compiled code, not deopt
- Error: `_ByteAt:Put: badTypeError`, `Receiver is: 'asByte'` during capitalize → copyMutable → fillFrom: → with:Do: → string iteration

### Fixes applied (both correct, neither sufficient)
1. **Inherited receiver slot for proxy** (Inliner.swift): The `inlinedFrameEnterWithProxy` instruction now gets `inheritedReceiverSlot` instead of `-1` for implicit-self callees at depth>=2. This ensures the proxy's receiver is the enclosing explicit-receiver callee's stashed receiver, not the OPT's root receiver. Confirmed via diagnostic logging that rcvSlot > 0 at depth 2 and 3.

2. **Real callee map in proxy locals** (OptimizedActivation.swift): `buildInlinedFrameProxy` now uses the callee method's real `SlotDescs.map` (with proper slot names) instead of synthetic `__inlined_local_N` dummies. This enables implicit-self lookups from blocks to find callee locals by name through the standard lexical parent chain.

### Newly inlined methods with the flag
Inliner logging revealed these are the methods that become inlinable when the flag is on:
- `at:IfAbsent:` — explicit-receiver, 2 args, 4 instructions, hasBlocks=true. Inlined at depths 1, 2, 3.
- `asCharacter` — explicit-receiver, 0 args, 2 instructions, hasBlocks=true. Inlined at depths 1, 2, 3.
- Both contain blocks that access callee locals at level > depth.

### Key diagnostic: accessLocal bounds check
Added bounds assertion to `evaluate(localAccess:)` — did NOT trigger. The proxy has enough slots and the offset is valid. The bug is a **wrong value** in a valid slot, not an out-of-bounds access.

### Hypotheses eliminated
- Proxy receiver wrong (fixed, still fails)
- Proxy locals map has dummy names (fixed, still fails)
- Slot allocation overlap between nested proxies (ranges don't overlap)
- accessLocal out of bounds (assertion didn't fire)

### Next steps to try
- Add value-level diagnostic: log every `readInlinedSlot` and `writeInlinedSlot` for the relevant slot indices to catch when a value gets corrupted
- Check if `implicitSendWithStashedReceiver` at depth 2 reads the right receiver by logging the actual Oop value
- Look at whether `at:IfAbsent:` at depth 2 inside `characterFor:IfFail:` at depth 1 has correct slot allocation (no overlap, correct pop order)
- Consider if the bug is in the LOOP DRIVER inlining interacting with the newly-inlinable methods, not in the proxy mechanism

### Settings/permissions
- Bash permission rules use prefix:* syntax, not glob patterns. `Bash(*)` used for this session.
- ~/.claude/CLAUDE.md says use Debug builds for short tests, Release for long ones.

### Files modified (uncommitted)
- `Inliner.swift` — inherited receiver slot fix + [INLINE] logging
- `OptimizedActivation.swift` — real callee map fix
- `Activation.swift` — accessLocal bounds assertion (diagnostic)


############################################################
# PROJECT: -Users-ungar-self-vms-russell-allen-self
############################################################

## INDEX (MEMORY.md)

- [Regenerate vmDate](feedback_vmdate.md) — after cmake regeneration, run configureVmDate.cmake before building
- [Step-command highlight goals](project_step_highlight_goals.md) — for `halt. 3 + 4` / attach: 0 / step / step, step 1 should highlight `3 + 4` and step 2 should highlight `asSmallInteger`
- [Xcode/cmake wrapper](project_xcode_cmake_wrapper.md) — regenerate Xcode project via ./scripts/cmake-xcode.sh; rewrites paths past vm64/->vm/ symlinks
- [Silence Xcode console noise](reference_xcode_console_noise.md) — set OS_ACTIVITY_MODE=disable in scheme env vars
- [Step-cascade EXC_BAD_ACCESS investigation](project_step_cascade_crash.md) — Release-only crash in frame::sender after stepping `halt. 3 + 4`; partially fixed; full handoff with failed attempts and next steps
- [SelfFrameQuery enum → bool](feedback_selfframequery_enum_to_bool.md) — Plan D shipped with a 2-case enum; user wants it replaced with a bool when next touching the predicate
- [Unify redundant implementations](feedback_unify_redundant_implementations.md) — when two functions do the same thing, factor to one canonical body + delegation rather than duplicating; only duplicate for meaningful perf reasons
- [Never guess](feedback_no_guessing.md) — read source / instrument / run; never claim runtime behavior from speculation
- [ForceFrequentScavenges default](project_force_frequent_scavenges.md) — flag must default to false; tenuring can hide GC-root bugs
- [Sign comments](feedback_comment_signature.md) — sign every new comment with `-- claude & dmu <Month YYYY>`
- [Crash A](project_crash_A.md) — post-load get_argument_count fatal; live selector 0x8005797e1 len=5/arg_count=1 with zeroed bytes


----- feedback_comment_signature.md -----

---
name: Sign comments with claude & dmu + month/year
description: All code comments Claude writes should be signed "claude & dmu <Month YYYY>"
type: feedback
originSessionId: 6efd6f00-1939-4cc0-a8da-a1199d5fcc24
---
When writing any code comment, sign it with `-- claude & dmu <Month YYYY>` (e.g. `-- claude & dmu May 2026`). The leading `-- ` (two hyphens + space) matches the existing signature convention in this codebase (e.g. `-- dmu 5/06`, `-- dmu & Mario 6/04`). Use the current month and year at the time of writing.

**Why:** dmu wants attribution and dating on comments so future readers (including future Claude sessions) can see who/when a comment was added and judge how stale its claims are. The `-- ` prefix matches what's already in the source.

**How to apply:** Append the signature to every new comment block — single-line or multi-line — in any file Claude edits. For multi-line comments, put the signature on the last line. Don't retroactively sign comments Claude didn't write. Still follow the "default to no comments" rule from CLAUDE.md — this only changes how to sign the comments you do write.


----- feedback_no_guessing.md -----

---
name: Never guess
description: Do not speculate or guess about runtime behavior, code semantics, or causes — read the source / add instrumentation / run the code instead
type: feedback
originSessionId: 72826f89-c48c-45e3-a877-3e5986794d0e
---
Do not GUESS. Ever.

**Why:** Reasoning from incomplete information produces confident-sounding wrong answers that waste user time and send investigation in wrong directions. Earlier this session I claimed the 0xde poison memset clobbered the return value of `interpret()` — without first reading the function. The user pushed back ("if it is read BEFORE it's poisoned, why is it bad?"); reading the actual code showed `oop result = interp.top()` is captured into a local before the memsets run, so the local can't be clobbered. The guess was wrong and misleading.

**How to apply:** Before making any factual claim about how code behaves — what a function returns, when memory is touched, what order things happen, what a value will be — either:
  - Read the actual source (Read tool), or
  - Run/instrument the code and observe, or
  - Say "I don't know — let me check" and then check.

If a question can't be answered without speculation, say so explicitly rather than offering a guess dressed as analysis. The CLAUDE.md rule "do not spend more than 5 minutes reasoning before adding instrumentation" applies here too.


----- feedback_selfframequery_enum_to_bool.md -----

---
name: Replace SelfFrameQuery enum with bool
description: Plan D shipped with a 2-case enum SelfFrameQuery; user wants it simplified to a bool once the dust settles
type: feedback
originSessionId: 07c4a002-6a77-4b45-bd8d-a515374984f5
---
The Plan D fix for the bottom-of-process GC hole introduced
`SelfFrameQuery` (an enum in vm64/src/any/runtime/frame.hh) with
two cases: `HoldsSelfExecutionState` (default, sentinel YES) and
`AlsoCanBeUnwoundPast` (sentinel NO). Cases are `#if`-fenced for
the interp-only-64-bit configuration.

Why: The user wants this simplified to a bool parameter (e.g.
`bool forUnwind = false`). Two states, named via a true/false
toggle, is plenty.

How to apply: When the user next touches `is_self_frame` /
`is_interpreted_self_frame` / `is_compiled_self_frame` or
asks to clean up Plan D, propose replacing the enum with a bool.
Only ~5 call sites pass the non-default value; mechanical change.


----- feedback_unify_redundant_implementations.md -----

---
name: Unify redundant implementations by delegation
description: When two methods/overloads do the same thing, prefer one canonical body with the other delegating — only duplicate when the perf cost of the indirection is meaningful
type: feedback
originSessionId: 07c4a002-6a77-4b45-bd8d-a515374984f5
---
When proposing or writing two functions/overloads/subclass-methods whose
bodies do essentially the same work, **factor them into one canonical
body and have the other delegate**. Don't ship duplicated logic just
because each overload "feels at home" in its own signature.

**Why:** duplication invites drift — one body gets a bug fix or a new
field and the other doesn't. The user has flagged this directly during
the simpleLookup oops_do work: the two overloads (`oopsDoFn` and
`OopClosure*`) were initially shipped with parallel field lists, and
got unified by having the function-pointer overload wrap its callback
in `OopLocationsDoer` and delegate to the closure overload.

**How to apply:**
- Whenever two siblings have the same field walk / same straight-line
  logic, look for an existing adapter (in this codebase: `OopDoer`,
  `OopLocationsDoer`, etc.) or write a thin one rather than duplicating.
- Default to delegation. Only duplicate if there's a measurable
  performance penalty *and* the code is on a hot path. State the
  performance reason in a comment when you do.
- Same principle applies to subclass overrides that match parent
  behaviour (e.g. NMethodLookupKey::oops_do was a redundant override of
  MethodLookupKey::oops_do once we added the parent body — delete it,
  let inheritance handle it).


----- feedback_vmdate.md -----

---
name: Regenerate vmDate after cmake regeneration
description: After regenerating the Xcode or Makefile build with cmake, run the vmDate script so vmDate.cpp is up to date
type: feedback
originSessionId: 2c2b6c74-e85c-46db-8fd2-317217a412ce
---
After regenerating a cmake build directory (e.g. `rm -rf cmake-build-xcode-vm64 && cmake -G Xcode ...`), always run the vmDate generation script before telling the user the build is ready:

```
cmake -P <build-dir>/vm64/configureVmDate.cmake
```

**Why:** The vmDate.cpp file lives inside the build directory's `incls/` folder and is deleted when the build dir is removed. Without regenerating it, the Xcode build will fail or use a stale timestamp. The user had to ask for this manually once.

**How to apply:** Any time a `cmake -G ...` command creates or recreates a build directory for vm64, follow it immediately with the vmDate script invocation.


----- project_crash_A.md -----

---
name: Crash A — get_argument_count fatal, zeroed selector bytes
description: Post-snapshot-load fatal at pc=11 IMPLICIT_SEND; live selector 0x8005797e1 has len=5 / arg_count=1 but bytes are all zero
type: project
originSessionId: 6efd6f00-1939-4cc0-a8da-a1199d5fcc24
---
**Label:** crash A.

**Symptom:** RelWithDebInfo run, traceV=true, after `[DIAG] entering eval(snapshotAction postRead)` and the welcome banner. Fatal in `abstract_interpreter::get_argument_count` (called from `do_IMPLICIT_SEND_CODE`) at pc=11.

**Key fingerprint:**
- `is.argument_count = 0` but live selector reports `arg_count = 1` → fatal.
- Live selector oop `0x8005797e1`, `len=5`, `arg_count=1`, but printed bytes are empty (5 nulls).
- `pre_send_selector_oop == live selector_oop` — pre-send capture matches; **not** a stale-pointer-across-call bug.
- `saved_selector_oop = 0` (post_ARGUMENT_COUNT_CODE never ran for this send).
- Bytecode at pc=11 is `0x35` (op=3, x=5). pc=12 is `0xd1` (op=13 ARGUMENT_COUNT(1)) — i.e. ARGUMENT_COUNT comes *after* the failing send.
- Method: `mi._map_oop = 0x80094c0d9`, `length_codes=29`, `length_literals=11`, instruction_set = 20C+ARGCOUNT.
- pc ring shows ARGUMENT_COUNT fired only at pc=2 (x=1). Later IMPLICIT_SENDs at pc 3,5,7,11 had no ARGUMENT_COUNT preceding them.

**Why the cached-arg-count detail matters:**
Self computes `arg_count` by counting colons in selector bytes. Five zero bytes contain zero colons, yet the live selector reports 1. So `arg_count=1` is read from a cached/metadata field while the byte payload is zeroed. Either the wrong literal was resolved (hypothesis 1), or the right literal's payload was overwritten while metadata survived (hypothesis 2/3 — heap corruption).

**Why:** This crash is on the path the GC-roots / lookup_in_progress / preserved-oop work was supposed to harden. Pre-send-vs-live match means the bug is not "oop moved across a call we forgot to wrap" — it's deeper (wrong index resolution, or bytes-region corruption).

**How to apply:** When dmu says "crash A" in future sessions, this is what they mean. Next diagnostics to add:
1. Dump raw memory at the live selector oop (header, length slot, arg_count slot, byte region) to tell whether bytes were ever nonzero and whether the map is really stringMap.
2. Dump `mi.literals[0..length_literals-1]` so we can see the surrounding literal table and spot misindexing.
3. Print the actual resolved literal index IMPLICIT_SEND used at pc=11 (combine is.index + inline x in the dispatch formula).


----- project_force_frequent_scavenges.md -----

---
name: ForceFrequentScavengesViaSmallNewSpace default
description: The --force-frequent-scavenges-via-small-new-space flag must default to false; turning it on can hide bugs
type: project
originSessionId: 6efd6f00-1939-4cc0-a8da-a1199d5fcc24
---
`ForceFrequentScavengesViaSmallNewSpace` (declared in `vm64/src/any/runtime/shell.cpp`, opt-in via `--force-frequent-scavenges-via-small-new-space`) defaults to **false**.

**Why:** The flag tenures everything post-load and shrinks eden/surv to 1/10. That tenuring step can mask GC-root / stale-pointer bugs by moving fragile objects out of new space before they get exercised. Default-on would hide bugs we're trying to find.

**How to apply:** Keep the initializer at `false`. It's a stress amplifier, enable per-run for repro only. Yesterday's session summary incorrectly claimed default=true — ignore that; the code is correct.


----- project_step_cascade_crash.md -----

---
name: Step-cascade EXC_BAD_ACCESS in Release builds
description: ROOT-CAUSED. Cascade-step crash + new argument_count fatal both trace back to GC moving oops while simpleLookup holds stale C-stack copies. Plan D fixed the cascade-step crash; argument_count fatal needs GC-root fix for simpleLookup.
type: project
originSessionId: 07c4a002-6a77-4b45-bd8d-a515374984f5
---
# Step-cascade crash investigation — RESOLVED for cascade, OPEN for follow-on

**Status as of 2026-05-05:** Cascade-step EXC_BAD_ACCESS is **fixed** (Plan D). A separate `argument_count 0 ≠ 1` fatal surfaced today and is **diagnosed** but not yet fixed (needs GC-root fix for `simpleLookup`).

## Cascade-step crash — FIXED via Plan D

### Root cause
Commit `bbee457` had added a guard `is_bottom_of_process_sentinel()` inside `frame::is_interpreted_self_frame()` to keep the sentinel from leaking through unwind paths (`HandleReturnTrap`, `killVFrameOops*`, `frame::patch`, `Stack::first_VM_frame`, `Stack::last_self_frame`). That guard *also* made `FrameIterator::do_all` skip the sentinel during scavenge — so the bottom-of-process `interpret()`'s `args[]`, `locals[]`, `selToSend`, `mi`, etc. were never updated by GC. Args of every method called transitively from the bottom interp ended up holding stale (post-move) addresses → bad oops in the cascade unwind print path → crash.

### Fix (Plan D)
Introduce `SelfFrameQuery` enum (config-fenced for `TARGET_IS_64BIT && !FAST_COMPILER && !SIC_COMPILER`) with cases `HoldsSelfExecutionState` (default — sentinel YES, GC-correct) and `AlsoCanBeUnwoundPast` (sentinel NO — unwind-correct). Parameterize the three predicates:
- `frame::is_self_frame(SelfFrameQuery q = HoldsSelfExecutionState)`
- `frame::is_interpreted_self_frame(SelfFrameQuery q = ...)`
- `frame::is_compiled_self_frame(SelfFrameQuery q = ...)`

The default answers the natural-reading question ("is this a frame holding live Self execution state?"), which is correct for GC. Unwind callers (~5 sites) explicitly pass `AlsoCanBeUnwoundPast`. See `vm64/src/any/runtime/frame.hh`.

Additional NULL-guards added at four unwind sites where `last_self_frame()` can now return NULL when the cascade has unwound past every real Self frame:
- `Stack::first_VM_frame` (sentinel handling restored to the assertion form once predicate is honest)
- `unpatch_the_convertFrame_and_get_returnTrap_info` (frame.cpp)
- `Conversion::convert` (conversion.cpp)
- `Conversion::return_to_interpreted_self` (conversion.cpp)

The cascade-step repro (`a` halt → `attach: 0` → `step` ×9 → `7` → `_Quit`) now completes cleanly, including with VerifyBeforeScavenge/VerifyAfterScavenge enabled (no heap inconsistency).

### Memo
The user wants the `SelfFrameQuery` enum simplified to a `bool` parameter at next cleanup pass (see `feedback_selfframequery_enum_to_bool.md`).

## New: `argument_count 0 ≠ 1` fatal — DIAGNOSED, not yet fixed

### Repro
Intermittent, ~25-50% of runs. Hits at startup before user input or shortly after the first prompt. Started appearing **today** after the heap-leak diagnostic + Plan D were stacked. Fatal:
```
Self VM fatal error (.../abstract_interpreter_inline.hh, line 25):
  argument_count 0 does not match selector's argument count 1
```
Stack trace is a chain of `interpreter::send` → `do_send_code` → `dispatch_bytecode` → `interpret_method` → ... .

### Investigation chain
1. **Verify always passes.** Heap is consistent before and after every scavenge. So this is not GC corrupting heap oops.
2. **Per-bytecode `is.argument_count` checks pass on the running interp.** It's a `fint`, GC doesn't touch it.
3. Hypothesis: **GC fires during a nested `send()` call, moves `selToSend`/`rcvToSend`, and a C-stack-resident object captured copies of those oops *before* the call.** Confirmed via diagnostic in `interpreter::send` that snapshots `selToSend`/`rcvToSend`/`is.argument_count` + `Memory->scavengeCount` before `lookup_and_send`, then crashes loudly if any of the oops moved.
4. **`SEND_OOP_MOVED` confirmed**: `selToSend` snap=0x8007d7911 now=0x801559821 moved=YES; `rcvToSend` similarly moved; `argument_count` (fint) unchanged. So GC fires during `lookup_and_send` and moves the in-flight selector and receiver.
5. **Smoking gun located**: `interpreter::lookup_and_send` constructs `simpleLookup L(...)` on the C stack at vm64/src/any/interpreter/interpreter.cpp:1061. The `simpleLookup` constructor (vm64/src/any/lookup/simpleLookup.cpp:28-54) **captures `rcvr`, `sel`, `dgt`, `mhOrMap` into `L`'s fields**. Then `switchToVMStack_intSend(&L, ...)` (line 1074) performs the lookup — and may scavenge. **`L` is on the C stack; GC does not scan C-stack-resident objects**, so `L.key.selector`, `L.receiver`, `L.key._receiverMapOop`, etc. go stale. After the call, `L.evaluateResult` runs against stale data, may dispatch the wrong method, leaves `is.argument_count` inconsistent for the next send, which then fires the fatal.

### Why this didn't surface before
- **Frequency.** In a compiler-equipped VM, most sends bypass `lookup_and_send` via inline caches. Per-send chance of hitting this code × per-hit chance of a scavenge during it is tiny.
- **Plan D opened the door.** Bottom-interp scanning increased GC root coverage in the interp-only build; combined with extra allocation pressure from today's heap-leak diagnostic (`malloc` × 3 per `interpret()` entry), scavenges now fire inside `lookup_and_send` at a rate that exposes the latent bug.
- The bug is **interpreter-side and latent for years**.

### Diagnostic in tree (still active)
- `vm64/src/any/interpreter/interpreter.cpp` interpret() — heap-leak (`new interpreter`, `malloc` for storage), poison memset at exit; per-bytecode args validity check; scavenge-range recorder; PROBE buffer.
- `vm64/src/any/interpreter/interpreter.cpp` interpreter::send — snapshot+check around `lookup_and_send`; fatal-crash on `ARGCOUNT_BROKEN_BY_SCAVENGE` (was `SEND_OOP_MOVED` earlier; tightened to invariant check).
- `vm64/src/any/runtime/frame.cpp` `is_interpreted_self_frame` — Plan D parameterized with `SelfFrameQuery`. **Keep.**
- `vm64/src/any/runtime/stack.cpp` — frames_do uses `AlsoCanBeUnwoundPast` for `climb_to_frame` path. **Keep.**
- `vm64/src/any/runtime/frame.cpp` and `vm64/src/any/runtime/conversion.cpp` — NULL guards. **Keep.**
- `vm64/src/any/runtime/debug.hh` — VerifyBeforeScavenge / VerifyAfterScavenge currently `false`. Toggle to `true` for verification runs.

### Next step
Fix `simpleLookup` so its captured oops survive scavenges that fire inside `switchToVMStack_intSend`. See plan in this same file under "GC-root fix plan" below.

## GC-root fix plan for `simpleLookup`

### Problem statement
`simpleLookup` and its derived classes (`vframeLookup`, `compilingLookup`, `cacheProbingLookup`) capture oops into C-stack-resident instances. Any scavenge that fires while such an instance is alive will move the targets but not update the captures. Post-call code uses the stale captures.

### Fix shape: register `simpleLookup` as a GC root via a chained list

Each `simpleLookup` instance pushes itself onto a per-process linked list at construction and pops at destruction. GC's root scan walks the list and treats each entry's captured oops as live; relocations update the captures in place.

Mechanically similar to how `active_interp_list` already works for interpreter activations.

### Concrete steps

1. **Add a chain pointer to `simpleLookup`** (vm/src/any/lookup/simpleLookup.hh):
   ```cpp
   class simpleLookup : public ResourceObj {
   public:
     simpleLookup* _prev_in_chain;
     ...
   };
   ```

2. **Add per-process chain head** (vm/src/any/runtime/process.hh):
   ```cpp
   class simpleLookup* active_simpleLookup_list;  // initialized to NULL in ctor
   ```
   Initialize to NULL in `Process::Process()` and at any process abort/kill that already nulls `active_interp_list`.

3. **Push/pop in simpleLookup ctor/dtor** (vm/src/any/lookup/simpleLookup.cpp):
   ```cpp
   simpleLookup::simpleLookup(...) {
     ...existing field init...
     _prev_in_chain = currentProcess->active_simpleLookup_list;
     currentProcess->active_simpleLookup_list = this;
   }
   simpleLookup::~simpleLookup() {
     assert(currentProcess->active_simpleLookup_list == this,
            "simpleLookup chain corruption");
     currentProcess->active_simpleLookup_list = _prev_in_chain;
   }
   ```
   Note: needs a destructor (currently may not have one). Verify subclasses still cleanup correctly via virtual destructor chain.

4. **Iterate during GC root scan**. Find where Process roots are walked (likely `Process::oops_do` or wherever active_interp_list is iterated). Add:
   ```cpp
   for (simpleLookup* L = active_simpleLookup_list; L; L = L->_prev_in_chain)
     L->oops_do(closure);
   ```
   Implement `simpleLookup::oops_do(OopClosure* c)`:
   ```cpp
   void simpleLookup::oops_do(OopClosure* c) {
     c->do_oop(&receiver);
     c->do_oop(&key.selector);
     c->do_oop(&key.delegatee);
     c->do_oop((oop*)&key._receiverMapOop);
     c->do_oop(&key.methodHolder_or_map);  // if oop type
     // result and other late-set fields too as appropriate
   }
   ```

5. **Subclass coverage**. `vframeLookup` adds `sendingVFrame` (abstract_vframe*, not an oop). `compilingLookup` (FAST/SIC compiler builds) adds compile-time fields. The chain mechanism covers them all because they inherit; `oops_do` should be virtual to let subclasses scan additional oops if they have them.

6. **Verify after fix**. Re-run cascade repro and idle-the-prompt for ~30s with VerifyBeforeScavenge enabled. The `argument_count` fatal should stop. Remove the diagnostic in `interpreter::send` (or convert to a permanent `assert`).

### Risks
- **Chain corruption on abnormal exit.** If a `simpleLookup` is alive when a longjmp unwinds past its destructor, the chain pointer leaks. Same concern as `active_interp_list`. Mitigation: clear `active_simpleLookup_list = NULL` at the same abort/kill sites that null `active_interp_list`.
- **Cross-process scenarios.** During process switching, the lookup is on the suspended process's C stack. GC root walk should iterate per-process chains (similar to per-process `active_interp_list`).
- **ResourceObj base class.** `simpleLookup` extends `ResourceObj`. Adding a destructor on a ResourceObj-derived class is unusual; verify it doesn't break the resource-area cleanup model.

### Bisection alternative if fix is intractable
**Revert the heap-leak diagnostic** (`new interpreter` → `interpreter interp(...)`, `malloc` → `alloca`). This would reduce scavenge frequency at this site enough that the latent bug becomes intermittent again. Combined with Plan D, would still leave the latent bug present but rarely-triggered. Document for future work.

## Files in tree at handoff (uncommitted)
- `vm64/src/any/runtime/frame.hh`, `frame.cpp` — Plan D enum + parameterized predicates + NULL guards
- `vm64/src/any/runtime/stack.cpp` — frames_do uses AlsoCanBeUnwoundPast for climb_to_frame
- `vm64/src/any/runtime/conversion.cpp` — NULL guards in Conversion::convert and return_to_interpreted_self
- `vm64/src/any/interpreter/interpreter.cpp` — heap-leak diag + per-bytecode arg check + scav range recorder + send-time invariant check (fatal on break)
- `vm64/src/any/interpreter/interpreter.hh` — diag declarations
- `vm64/src/any/runtime/debug.hh` — VerifyBeforeScavenge/After currently `false` (toggle for verification runs)

## Earlier session context (still relevant)
Original fatal "could not find HandleReturnTrap frame on stack" was fixed in commit `98e9d51` via `Conversion::return_to_interpreted_self` skipping the `interpreter_frame_for_continuing_from_return_trap` lookup on 64-bit interp-only (`conversion.cpp:407`). Cascade unwind itself is by-design: each `HandleReturnTrap` arms a return-trap one frame up via `Process::patchForSingleStepping`. The cascade succeeds (result `7` printed) before the original crash; that bug was in post-result unwind printing, where stale vframes were dereferenced.

Original (pre-Plan-D) hypothesis was "dangling `interpreter*` pointers in vframes"; that was disproved (heap-leak diag with PROBE_FOUND showed interps were on `active_interp_list` and alive). Real bug was the GC root miss for the bottom-of-process sentinel.


----- project_step_highlight_goals.md -----

---
name: Desired step-command highlight behavior
description: What the text-mode debugger should highlight after each step command for `halt. 3 + 4` — used to judge whether step-command fixes are complete
type: project
originSessionId: 1b45f93b-4c7e-478b-a365-e95c90defd5e
---
For the canonical repro `halt. 3 + 4` then `attach: 0` then `step`, `step`:

- **First step**: should highlight `3 + 4` (the remaining sub-expression in the doIt). Currently it just lands at the doIt with no sub-expression highlighted.
- **Second step**: should highlight `asSmallInteger` (the first send inside the `+` method body). Currently (with the deferred-prologue-yield variant) the debugger shows the `+` method body but without the asSmallInteger highlight.

**Why**: matches the old-Mac compiler VM behavior the user wants on the interpreter-only build.

**How to apply**: after implementing any stepping-related VM change, run the canonical repro and check the two highlights. If either is missing, the fix is incomplete — likely the PC is landing one bytecode too early or too late relative to what the Self debugger's source-highlighting logic expects.

**Reverted attempt** (2026-04-18): in `interpreter::interpret_method`, deferring the prologue `fastPreemptionCheck` yield under stepping (arming `stepYieldPending` instead so the yield happens at pc=firstBCI) made step 2 show the `+` method body but still didn't produce the asSmallInteger highlight. User reverted this. Remember it as a partial step that changed display but not highlight.


----- project_xcode_cmake_wrapper.md -----

---
name: Xcode/cmake wrapper for symlinked source tree
description: How to regenerate the Xcode project so saves don't break the vm64/->vm/ symlink mirror
type: project
originSessionId: 10b142cc-424a-41df-aeef-ff3a8f3f6b51
---
To (re)generate the Xcode project, run:

    ./scripts/cmake-xcode.sh [extra cmake args]

It runs `cmake -S vm64 -B cmake-build-amd64-xcode -G Xcode` and then `scripts/fix-xcode-paths.py` to rewrite every `path = src/...; sourceTree = SOURCE_ROOT;` reference in `cmake-build-amd64-xcode/Self.xcodeproj/project.pbxproj` to an absolute, realpath()-resolved path (so writes land on the real file, typically `vm/src/...`).

**Why:** `vm64/src/` is a tree of per-file symlinks into `vm/src/`. Xcode's atomic save replaces symlinks with regular files (and refuses to save with "file doesn't exist" in some cases), which would silently break the mirror. Pointing the project at realpath targets bypasses the symlinks. Plain `SOURCE_ROOT` overrides do not help — each symlink can point to a different real location, so the rewrite has to be per-file.

**How to apply:** Don't run cmake directly for Xcode generation; use the wrapper. If Xcode's `ZERO_CHECK` target re-runs cmake on its own and breaks saves again, re-run `scripts/fix-xcode-paths.py cmake-build-amd64-xcode vm64` (idempotent). If that becomes recurring, escalate to a custom Xcode build phase that runs the script.


----- reference_xcode_console_noise.md -----

---
name: Silence macOS framework noise in Xcode console
description: OS_ACTIVITY_MODE=disable in Xcode scheme suppresses "connection to service named com.apple.*" chatter
type: reference
originSessionId: 10b142cc-424a-41df-aeef-ff3a8f3f6b51
---
To silence macOS framework debug spam in the Xcode debugger console (e.g. `Unable to get synchronousRemoteObjectProxy`, `connection to service named com.apple.linkd.autoShortcut`, and similar `os_log` chatter), add this to the Xcode scheme:

  Edit Scheme → Run → Arguments → Environment Variables:
    OS_ACTIVITY_MODE = disable

Optional extras if needed: `IDEPreferLogStreaming = YES`, `CFNETWORK_DIAGNOSTICS = 0`.

Note: scheme settings live in `*.xcodeproj/xcshareddata/xcschemes/` (shared) or `xcuserdata/` (per-user). CMake-generated schemes get overwritten on regeneration — if these vars vanish, re-add them in the scheme editor.


############################################################
# PROJECT: -Users-ungar-selves-pre-2026-reorg
############################################################

## INDEX (MEMORY.md)

- [Self object-world layout](self-object-world-layout.md) — live tree is ~/self/objects; pre-2026-reorg is archives; OurSelf self64 is a separate 64-bit lineage
- [mac-classic-objects branch](mac-classic-objects-branch.md) — Mac-only classic object world rebased onto the OurSelf self64 repo (3 commits)


----- mac-classic-objects-branch.md -----

---
name: mac-classic-objects-branch
description: "The mac-classic-objects branch in the OurSelf self64 repo — purpose, structure, and intended change flow"
metadata: 
  node_type: memory
  type: project
  originSessionId: 439ac99d-e7f6-4a8c-8a4b-c207f4d9b626
---

Branch **`mac-classic-objects`** in `~/self/vms/OurSelf/self64` (created 2026-05-23, off `master` tip `2aeaaa98` = AVP-port's fork point). Local only; not pushed.

Holds the **classic Mac object world** as a Mac-only lineage. Only `.self` files were touched; the 64-bit VM build glue (non-`.self`) is left as `master`'s. Three commits:
1. `114e2448` — import pre-2020 classic Mac object world (`.self` only): 1,333 tracked `.self` (= pre-2025's 1,335 minus 2 repo-`.gitignore`d junk: `objects/glue/test_wrappers.self`, `objects/~/IBM/idpVMPerfEst.self`).
2. `513f8353` — `xlib.self` clipboard fix: route fetch/storeToClipboard to native Mac pasteboard via `quartz window …` (XQuartz doesn't bridge X cut buffers).
3. `d83f92a2` — graphics up to live: `quartz.self` update + new `ui1OnQuartzHacks.self`.

mac-classic-objects end state: branch object world == `~/self/objects` (live) except `xlib.self` carries the extra clipboard fix. See [[self-object-world-layout]].

**UNIFIED into AVP-port (2026-05-23).** Decision: since the user develops both Mac and AVP versions and AVP-port's VM is already dual-target (builds macOS + visionOS), keep ONE branch. Merged `mac-classic-objects` into `AVP-port` (conflict-free — object and VM change-sets were disjoint). **`AVP-port` is now the unified dev branch** = classic Mac object world (**1,332** tracked `.self`, incl. clipboard fix + live graphics) + the visionOS/macOS dual-target VM. AVP-port's old 64-bit object set (653 `.self`, incl. crypto/mySQL/sha1/etc.) was superseded (still on `master` + in history). Current tips: **`AVP-port` @ `27f1eddb`** (merge), **`mac-classic-objects` @ `9184dc89`**.
- Mac-vs-AVP differences handled by build target + runtime platform checks in objects (Self idiom), NOT separate branches.
- `mac-classic-objects` kept as the clean object-import reference; not deleted. Its 3 commits = import / xlib clipboard fix / graphics-to-live.
- Safety: tag **`avp-port-pre-unify`** (`9b909a23`) = AVP-port before the merge; `git reset --hard avp-port-pre-unify` to roll back to the working 64-bit build.
- All local; nothing pushed to `origin` (OurSelf-Systems/self64).

**History rewritten to purge 2 binary snapshot blobs (2026-05-23):** the import had pulled in `objects/KleinAttempt.self` (~14 MB) + `objects/R9.self` (~14 MB). Rebuilt `mac-classic-objects` and the unify merge without them, expired reflogs + `git gc --prune=now` → `.git` 87M→72M, blobs gone from object store. This is why the commit SHAs above are not the originals. `.self` count dropped 1,334→1,332.

**OPEN — runtime reconciliation:** the classic object world has NOT been booted on this VM. Clean file merge ≠ runs. Next task is getting the classic objects to load on the dual-target VM (likely where breakage surfaces).

**How to apply:** Do new object + VM work on `AVP-port`. The old `xlib.self` clipboard change is also stashed (`stash@{0}`) but is now redundant (the merge brought `xlib.self` with the fix already in it) — safe to drop. Pre-munge objects backup: `~/self/vms/OurSelf/objects-backup-self64-20260523-183912.tar.gz`.


----- self-object-world-layout.md -----

---
name: self-object-world-layout
description: "Where the Self object worlds live on disk and how the lineages relate (live tree, archives, OurSelf 64-bit repo)"
metadata: 
  node_type: memory
  type: project
  originSessionId: 439ac99d-e7f6-4a8c-8a4b-c207f4d9b626
---

The Self `.self` object worlds on this machine, as of 2026-05-23:

- **`~/self/objects`** is the **live / canonical** Mac classic object world the user actively edits (1,336 `.self`). This is where new object changes are saved.
- **`~/selves/pre-2026-reorg/`** holds **archives** (pre-reorganization). Key one: `self pre self-64-embrace/objects pre 2025` is a pre-graphics-work snapshot of the live tree — identical to `~/self/objects` except the Apr-2026 graphics work (`quartz.self` update + new `ui1OnQuartzHacks.self`). A sibling `objects-for-mine` is a *different* lineage (whitespace-stripped core + small debug edits). The `russellallen-self-*` and `self_from_Russell_Allen` dirs are old upstream Self distros (2010/2012).
- **`~/self/vms/OurSelf/self64`** is a clone of `github.com/OurSelf-Systems/self64` — a **separate, smaller (~653 `.self`) 64-bit VM+objects lineage**. Default/main branch is `master`; `AVP-port` is the active feature branch (master + 36 commits, Mac+AVP work; candidate pool for things to push upstream to Russell Allen). `origin/master` is ~11 ahead of local master.

**Why:** The classic Mac object world (live) and the OurSelf 64-bit object set are different lineages — shared paths differ in content on ~2/3 of files, and the classic world has ~708 `.self` the 64-bit set lacks. Easy to conflate.

**How to apply:** Save object edits to `~/self/objects`. Treat `pre-2026-reorg/` as read-only history. See [[mac-classic-objects-branch]] for the branch that rebases the classic Mac world onto the OurSelf repo.
