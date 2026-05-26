# ui1-on-Quartz — resume prompt for next session

Paste the block below to kick off the next session. Full technical detail is in
auto-memory `project_ui1_on_quartz_state.md` (loaded automatically); this is just the directive.

---

Continue bringing up the classic **ui1 on the native Quartz backend** (branch AVP-port).
Read memory `project_ui1_on_quartz_state.md` first — it has the whole history, design, and recipes.

**Where we are:** **ui1 now STARTS UP FULLY on Quartz and RENDERS its world in colour.**
`ui startOn: ''` runs to completion with no errors; the window "The Self World" opens and (after
`ui world draw` + blitting `ui world graphic` through `ui colormap0 xcm clut`) shows the classic
Self sage-green desktop in correct colours (screenshot /tmp/ui1_on_quartz_world_rendered.png).
Foundation: VM prims (`MakeIndexedOffscreen`/`BlitIndexedToContext`/`OffscreenPixelAt`), the Quartz
indexed pixMap + software colormap + X11-GC protocol + the 8-bit "shadow window" — all integrated
into **quartz.self**, with **ui1OnQuartzHacks.self** reduced to thin macToolbox→quartz redirects.
Font/layout/colormap/pattern gaps all fixed (sizeOfString rect→point, drawLines gc-prefix, widMax,
quartz colormap, qdGlobals stub, foreground8Bit: via cme index).

**Test loop (fast, no refiles):** `cmake-build-xcode-macos/Debug/Self.app/Contents/MacOS/Self -s ui1quartz.snap`
from repo root, piping a stdin script ending in `_Quit`; add `0 as printError.` after a failing line
for a stack trace. After editing a source file, rebake: in a running Self,
`'objects/graphics/quartz.self' runScript.` (re-reads ui1OnQuartzHacks too) then
`memory snapshotOptions fileName: 'ui1quartz.snap'. memory writeSnapshot.` (shortcuts.snap is left alone).
VM Debug already built. Nothing committed.

**Immediate next steps:** (1) **Hook the flush** — make ui1's normal display/update automatically do
`ui world graphic → window blitIndexedTo: (current CLUT)` + `pw quartzWindow gc flush` each frame
(instead of the manual blit), and have colormap `install` trigger a reblit (colour-map animation).
Find uiWorld's flush/display path (how the X path copies offScreen→window). (2) **Un-nop
`spawnEventWatcherProcess`** (quartzWindow.mm prints "nopped for now") so mouse/keyboard reach ui1 →
then create an object and confirm bodies/menus/caret render & interact. (3) Blend the window shadow
(caret/direct draws) over the world at display. (4) Later: index-preserving `copyArea` byte-copy prim
(indexedPixmap copyArea:To:At:GC: is a stub); watch CG bottom-up vs ui1 top-down y-flip (bg was upright).
The world content lives in `ui world graphic` (indexedPixmap); the window `shadow` holds only direct draws.

**Standing reminder from David:** eventually the Quartz window/flush/event handling should follow the
**same convention as the existing `display` abstraction** (the X11/`xlib display` path), not the current
ad-hoc blit+pump. Not designed yet — raise it before finalizing the window-flush integration.
