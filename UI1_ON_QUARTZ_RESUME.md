# ui1-on-Quartz — resume prompt for next session

Paste the block below to kick off the next session. Full technical detail is in
auto-memory `project_ui1_on_quartz_state.md` (loaded automatically); this is just the directive.

---

Continue bringing up the classic **ui1 on the native Quartz backend** (branch AVP-port).
Read memory `project_ui1_on_quartz_state.md` first — it has the whole history, design, and recipes.

**Where we are:** ui1's indexed-on-Quartz graphics foundation is built and proven — VM prims
(`MakeIndexedOffscreen`/`BlitIndexedToContext`/`OffscreenPixelAt` in quartzPrims.cpp), the Quartz
indexed pixMap + software colormap + X11-GC protocol (now integrated into **quartz.self**, with
**ui1OnQuartzHacks.self** reduced to thin macToolbox→quartz redirects). A real Quartz window has
already displayed indexed→CLUT→truecolour graphics (screenshot /tmp/ui1_on_quartz_first_colour.png).
`ui startOn: ''` now runs through startup + colormap + layout and into **drawing**.

**Test loop (fast, no refiles):** `cmake-build-xcode-macos/Debug/Self.app/Contents/MacOS/Self -s ui1quartz.snap`
from repo root, piping a stdin script ending in `_Quit`; add `0 as printError.` after a failing line
for a stack trace. After editing a source file, rebake: in a running Self,
`'objects/graphics/quartz.self' runScript.` (re-reads ui1OnQuartzHacks too) then
`memory snapshotOptions fileName: 'ui1quartz.snap'. memory writeSnapshot.` (shortcuts.snap is left alone).
VM Debug already built. Nothing committed.

**Immediate next gap:** `No 'widMax' slot found in a quartz fontIDAndStruct` — `quartz fontIDAndStruct
width = (widMax * fontSize)` but the font instance has no `widMax`/`fontSize`. Figure out how the
quartz font is meant to populate its metrics (atsFont?) and fix it. Then keep chasing
`ui startOn: ''` gaps (more draw ops likely), then the big remaining pieces: hook the window flush
(the proven `blitIndexedTo:` into uiWorld's flush so frames reach the screen), the index-preserving
`copyArea` byte-copy prim (indexedPixmap copyArea:To:At:GC: is a stub), un-nop
`spawnEventWatcherProcess` for input, and `clear`/`delete`/`raise` on traits quartz platformWindow.
Watch the CG bottom-up vs ui1 top-down y-flip (fills were upright; text/copyArea may need a CTM flip).

**Standing reminder from David:** eventually the Quartz window/flush/event handling should follow the
**same convention as the existing `display` abstraction** (the X11/`xlib display` path), not the current
ad-hoc blit+pump. Not designed yet — raise it before finalizing the window-flush integration.
