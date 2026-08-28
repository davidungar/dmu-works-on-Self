# ui1-on-Quartz DIRECT — session handoff (2026-08-24)

Paste into the next session:

> Continue `ui copy startOn: 'direct'` (classic ui1 on Quartz 32-bit true colour).
> Read `UI1_ON_QUARTZ_RESUME.md` first. Do **not** invent a new memcpy prim.
> Direct offscreens are **BGRA** (`MakeRGBAOffscreen Opaque: false`), not
> opaque CGLayer. 3-D corners are **source-over alpha**, not AND/OR.
> First screen (sage + lobby + 3-D slab) **works**. Fonts: Helvetica Neue
> Medium. `present:` is the abstract path again (`displayNoUpdate` +
> `update` + `syncGraphics`). Window resize + initial Cocoa
> `boundsChanged` are on disk (confirm visually). Next: leftover
> hardcoded footer sizes (`diffUI` / transcript / notifier), and
> visually confirm arrows / swoop / world-grow triangle.
> Start Self with `-f objects/all2.self` only. **No snapshots.** Use the
> **Release** VM (`cmake-build-xcode-macos/Release/Self.app`), not
> RelWithDebInfo and not Debug, unless David says otherwise. Do not
> launch a second VM if one is already running.

Branch: `cont-ui1-on-quartz` (tracks `dmu-works-on-Self/cont-ui1-on-quartz`).
Hub file: `objects/ui1/ui1OnQuartz.self` (uncommitted; file-in, do not guess).
8-bit `ui startOn: ''` already works (indexed shadow + `BlitIndexedToContext`). This work is **direct**.

Self comments go in slot annotations, not method bodies.
After a failed start: `0 as printError`. After a visual miss: instrument and measure.
UI1 VM: **Release only** unless David says otherwise. Not RelWithDebInfo. Not Debug.

---

## Goal

First sage-green ui1 world + lobby body: **done**.
3-D slab (lid, side, sage chamfers): **done** (alpha, not stencil).

Window resize + first-show `boundsChanged`: **on disk** (confirm visually).
Do not reopen 3-D corners or the `0@0` present path unless a flaw proves they regressed.

---

## Last run

`0@0` present path (2026-08-24, this session). Do not start a second Self if one is already up.

- `directTraits present:` had skipped `displayNoUpdate`, so `graphic copyTo: offScreen` never ran. That is why only body copies (`destPt=30@132`) hit `copyArea:`.
- Calling `displayNoUpdate` **does** hit `rgbaPixmap copyArea:` at `destPt=0@0`, `src=400x300`, `dest=rgbaPix`, `qDst=0@0`.
- Restored abstract `present:`: `displayNoUpdate` (graphic→offScreen + arrows) → `update` (offScreen→shadow) → `syncGraphics` (`displayShadow` = shadow `presentToWindow:`).
- CPU BGRA samples after those copies (lobby 50@150, sage 200@20 / corners 0@0 and 399@299): graphic, offScreen, and windowBitmap match. Lobby `(120,124,126,255)`, sage `(170,179,160,255)`. Inset of the pixmap blit is **not** real with BGRA snapshots.
- `os_file openForAppending:` does not seek to EOF (Self `append` flag ≠ `O_APPEND`). Do not use it for probes; unique files or `printLine`.
- Do not trust `rgbaPixelAt` on GPU/IOSurface; these offscreens are `MakeRGBAOffscreen` bitmaps and read back.

Please look at the live window: arrows, swoop, and the world-grow triangle should now be able to show (they paint `windowBitmap` / offScreen). First paint may still need a drag until resize sends an initial `boundsChanged`.

Text layout (this session, all on disk; file in, do not duplicate methods):

- `quartz fontIDAndStruct`: `sizeOfString:` is width @ `(nLines * height)`. ATSU unjustified-bounds as a rectangle had collapsed height to ascent (boxes too short; “4 more slots” sat on the bottom). `height` = `(ascent+descent+leading) ceil asSmallInteger` so 12pt Helvetica Neue and Medium both become 15 (`round` split 14 vs 15 and names missed contents). `descender` = `descent ceil`. Do **not** set descender from capHeight (raised evaluator/slot labels).
- Radios/checkboxes: center in the actual slot-row height (`contentsSize y` / `nameSize y`) plus the original `+1`. Old formula used `font.height` and was tuned for X11 height=11.
- Evaluator footer: named geometry on `textApplication` (button size from label + `textInset`, handle from `footerResizeHandleExtent`, pack from real widget sizes). `init` ends `resize: computeSize: size` — lobby `copyOn:` never called `computeSize:` so the 170-wide eval editor kept overlapping Dismiss (black speck). `drawTitle` matches the Dismiss/Eval baseline (Menlo 14 vs Helvetica 15 plus button `textInset y`) and truncates so the title cannot paint into Dismiss.
- Self parser: no `+`/`-` precedence — parenthesize or assign stepwise. Do not duplicate quartz font methods into `ui1OnQuartz.self`.

Similar leftover magic (not opened this run): `diffUI.self` still has `size y - 20` / `size x - 16` / `58@16`; `transcript.self` `50@16`; notifier Dismiss `65@16`. Menus/sendButton use the same top-aligned `sizeOfString` recipe as the hidden-slots button.

---

## What made first screen work (do not regress)

1. **Watcher.** Direct opens a UI2 `windowCanvas` instead of `macWindow openIfFail:`. `directTraits tryToOpenWindowForDisplay:` installs that `platformWindow`, `makeRGBAShadow`, then `window finishOpening`.
2. **`finishOpening` split** (`objects/graphics/window.self`):
   - `abstractWindow finishOpening` — bitmap, cursor, init, `spawnEventWatcherProcess`, optional sync.
   - `macWindow finishOpening` — `display: quartz ui1EventSource forPlatformWindow: platformWindow` then `resend.finishOpening`.
   - `xWindow finishOpening` — icon / `configureAsTopLevel` / `graphics_exposures: false` then `resend`. `openIfFail:` calls `finishOpening`.
3. **`directTraits platformPixmap`** = `quartz rgbaPixmap`. `windowChanged` resizes `graphic`/`offScreen` through this.
4. **`directTraits present:`** is `resend.present:` — `displayNoUpdate` + `update` + `syncGraphics`. `sync` = `displayShadow` = shadow `presentToWindow:`. Do **not** skip to graphic-only blit.

Cocoa still does **not** send configure/expose on first show (`quartzWindow.mm` only queues `boundsChanged` from `windowDidResize:` / `windowDidMove:`; no `drawContent`). A resize/move is what delivers `windowChanged:`. Mapping: `boundsChanged` → `'windowResize'` → `typeName` `'configureNotify'`.

---

## Architecture (do not regress)

Indexed ui1 blit (works, different problem):

- `CopyIndexedArea_wrap` = CPU memcpy + y-flip.
- Present = `BlitIndexedToContext_wrap` (bytes + CLUT → `CGImage` → `DrawImage`).
- Palette **indices** must survive. Direct is true colour. **No new memcpy prim.**
- 3-D corners: `copy:Mask:` AND then OR (`gxAnd`/`gxOr`). Mask 0 = body, ones = chamfer.

Direct ui1 **now** (alpha path):

- Offscreen = `MakeRGBAOffscreen_wrap` **Opaque: false** (premultiplied BGRA, AA **on**).
- `initOffscreenSize:` sets y-down CTM (`setCTMForZeroAtTopHeight:`) then `saveGState` (clean clip).
- Undrawn pixels stay `alpha 0`. Body `display` is source-over: sage shows through the chamfers.
- `copy:Mask:` on depth > 8 is a plain `copy:` (AND/OR would stamp opaque black).
- `boxBitmap drawCornersAndMask` still fills the **mask** (hit-testing). On 32-bit it does **not** paint transparent onto the image.
- `copyArea:` / `presentToWindow:`: `createImageSnapshot` + identity CTM + `qDstY = destHeight - dstBottom` + `drawImage:X:Y:Width:Height:` (same dest math as UI2 `drawLayer`). **Do not** use y-down `DrawImage` with negative height (no-op / **black**).
- Window IOSurface is still opaque BGRX (`kCGImageAlphaNoneSkipFirst`). Dest can stay opaque; **source** bodies need alpha.

`graphic` vs `offScreen` (uiWorld): both window-sized bitmaps. `graphic` is the committed scene. `offScreen` is compose-and-flush. `update` copies offScreen onto `windowBitmap` (the 32-bit `shadow`). `sync` presents the shadow.

Window CTM: `setCTMForZeroAtTopHeight:` (`A=1, D=-1, TY=height`).

`foregroundColor:` takes colormapEntry (`index` → gray) and paint (`red/green/blue` 0–1, **`cme alpha`**). Parser trap: `((reflect: cme) includesKey: 'index') ifTrue:`. Direct `transparent` is `paint … Alpha: 0.0` (RGB 0 with alpha 1 is opaque black).

Do **not** go back to multiply/screen as AND/OR. AA gray × multiply was the black chamfer hairline. Lucida Grande has no Semibold (`CTFontCreateWithName` silently yields Helvetica).

---

## Fonts

| Backend | `lucidaSansFamily` | bold suffix | Why |
|---|---|---|---|
| Indexed | Verdana | Bold | 1-bit / AA off; David picked Verdana |
| Direct | Helvetica Neue | Medium | Semibold weight; CT line box ~14.7, ceiled to 15 so roman and Medium share a baseline. Avenir Next descent 4.4 inflated slot rows. Verdana Bold + AA was too heavy. |

Set in `directTraits tryToOpenWindowForDisplay:` / `x11Traits tryToOpenWindowForDisplay:`. Slot: `quartz lucidaSansFamily`, `quartz lucidaSansBoldSuffix`. Mapping in `quartzForFF.self` `quartzNameForFontSpec:`.

---

## Code on disk (file in)

Hub: `objects/ui1/ui1OnQuartz.self`

- `rgbaPixmap initOffscreenSize:` → `makeRGBAOffscreenWidth:Height: Opaque: false`, y-down CTM, `saveGState`.
- `rgbaPixmap copyArea:` → snapshot + identity `drawImage` (not `drawLayer`).
- `rgbaContext setClipRectangle:` / `setNoClipMask` = restore+save the init GState (X11 replace). `withClip:Do:` clips via `clipToRectX:` inside `withNewGStateDo` (must **not** call `setClipRectangle:`).
- `directTraits present:` → `resend.present:` (`displayNoUpdate` + `update` + `syncGraphics`). Do not skip to graphic-only `presentToWindow:`.
- `directTraits tryToOpenWindowForDisplay:` sets Helvetica Neue / Medium, canvas `platformWindow`, `makeRGBAShadow`, `window finishOpening`.
- `platformWindow bitmapImage` calls `ensureShadowSize` so a Cocoa resize recreates the BGRA shadow before `update`.

Also this effort:

- `objects/graphics/bitmap.self` — `copy:Mask:` depth > 8 skips AND/OR.
- `objects/ui1/boxBitmap.self` — 32-bit corner triangles only update the mask.
- `objects/ui1/uiColorPalette.self` — `x11DirectColorPalette transparent` alpha 0; `ones` white (indexed stencil; unused for direct display).
- `objects/graphics/quartzForFF.self` — `lucidaSansFamily` / `lucidaSansBoldSuffix`.
- `objects/ui1/ui1OnX11.self` — indexed resets Verdana/Bold.
- `objects/graphics/quartz.self` — `sizeOfString:` / integer `height` / `descender` (canonical; do not copy into ui1OnQuartz). `ensureShadowSize` uses `makeRGBAShadow` when `shadow depth > 8`, then `grafPort initialize`.
- `vm64/src/any/os/quartzWindow.mm` / `.hh` — `queue_bounds_changed` from `windowDidResize:` and first `activate`.
- `objects/ui1/boxSize.self` / `slotNameCpt.self` — radio/checkbox Y from actual row height.
- `objects/ui1/textEditor.self` — named footer geometry; `computeSize:` from widget sizes; `init` does `resize: computeSize: size`; title baseline + fit-to-Dismiss.
- `objects/graphics/window.self` — `finishOpening` split (still needed).

---

## Open bugs (rendering flaws)

1. ~~`0@0` graphic→offScreen never hit `copyArea:`~~ **done** — skipped `present:`; blit copies sage+lobby pixels.
2. **Swoop / arrows** — path is now the shadow present; confirm visually on the live window.
3. **World grow triangle** — same; confirm visually (`draw3dExtension` on `windowBitmap`, then `sync` = `displayShadow`).
4. ~~Inset of identity blit~~ **not real** on BGRA snapshots (corners of 400×300 are sage).
5. ~~First paint still needs a resize/move~~ **on disk** — `QuartzWindow::activate` queues the same `boundsChanged` as `windowDidResize`. Confirm the first paint no longer needs a drag.
6. **Evaluator vs lobby width** — editor is now as wide as the footer (title + Dismiss + Eval + handle); wider than the lobby is expected.
7. **Resize handle** — 10×10 sunken square next to Eval; showed in the last shot.
8. **diffUI / transcript / notifier** still use hardcoded footer button sizes (`58@16`, `50@16`, `65@16`) and diffUI still packs with `size y - 20`. Same overlap/baseline class as the evaluator was.

**Window resize (2026-08-26):** `windowChanged` already resizes `graphic`/`offScreen`. Direct also needs the 32-bit shadow + IOSurface: `ensureShadowSize` now `makeRGBAShadow` when `shadow depth > 8`, then `quartzWindow grafPort initialize`. `bitmapImage` calls `ensureShadowSize` so `update` (offScreen→shadow) sees the new size. Cocoa first show: `queue_bounds_changed` from `activate` (not only `windowDidResize:`). Release `Self.app` is the UI1 VM (not RelWithDebInfo, not Debug unless David says otherwise). Confirm visually: first paint without a drag, then drag-resize.

---

## Session state at quit (2026-08-26)

No live VM (old PID 77197 is gone). UI1 uses the **Release** VM (`cmake-build-xcode-macos/Release/Self.app`), not RelWithDebInfo, not Debug, unless David says otherwise. **Do not start a second VM if one is already up.** Start with `-f objects/all2.self` (no snapshot), then file in and `ui copy startOn: 'direct'`.

Dirty on disk: `objects/ui1/ui1OnQuartz.self`, `objects/graphics/quartz.self`, `vm64/src/any/os/quartzWindow.mm`, `vm64/src/any/os/quartzWindow.hh`, `vm64/configure.sh`, `vm64/select-xcode.sh`, `vm64/cmake/mac_osx.cmake`, `UI1_ON_QUARTZ_RESUME.md`.

Visual still on the user (cannot screenshot): first paint without a drag, window resize, arrows, swoop, world-grow triangle.

---

## Do not

- Add `CopyRGBAArea_wrap`.
- AND/OR or multiply/screen for 32-bit body blit.
- Mutate quartz context proxies (`_ParentAt:Put:` is not defined).
- Trust `GetData` / `rgbaPixelAt` on GPU bitmaps.
- Dest-rect guess `DrawImage` in y-down (no-op; **black**, not white).
- File in `macToolbox.self` (stack overflow).
- `xcodebuild` without sourcing `vm64/select-xcode.sh` (sets `DEVELOPER_DIR` to the newest `/Applications/Xcode*.app`; `xcode-select` is Command Line Tools). Override with `DEVELOPER_DIR=...`.
- Pass `-s Snapshot` or any snapshot. Start with `-f objects/all2.self` from repo root.
- Run UI1 on RelWithDebInfo or Debug. Use `cmake-build-xcode-macos/Release/Self.app` unless David says otherwise.
- Kill a Self the user is running. If one is already up, use it or ask.

---

## Test

From repo root. **No `-s`.** UI1 VM is **Release**, not RelWithDebInfo, not Debug (unless David says otherwise).

```
./cmake-build-xcode-macos/Release/Self.app/Contents/MacOS/Self -f objects/all2.self
```

If a VM is already up, file in then:

```
'objects/graphics/window.self' _RunScript
'objects/graphics/bitmap.self' _RunScript
'objects/graphics/quartz.self' _RunScript
'objects/graphics/quartzForFF.self' _RunScript
'objects/ui1/uiColorPalette.self' _RunScript
'objects/ui1/boxBitmap.self' _RunScript
'objects/ui1/boxSize.self' _RunScript
'objects/ui1/slotNameCpt.self' _RunScript
'objects/ui1/textEditor.self' _RunScript
'objects/ui1/ui1OnQuartz.self' _RunScript
ui copy startOn: 'direct'
```

After halt: `0 as printError`.
Indexed ui1 (`ui startOn: ''`) must stay working; `foregroundColor:` still has the `index` branch; lucida family resets to Verdana.
`SELF_WORKING_DIR` should be the repo root so `all2.self` finds `objects/core/init.self`.
