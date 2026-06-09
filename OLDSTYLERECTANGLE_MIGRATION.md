# oldStyleRectangle migration inventory

Goal: retire `globals oldStyleRectangle` and `traits oldStyleRectangle`, leaving everything on
the modern half-open `rectangle`. Chosen approach (see §2): **reimplement the `#!` / `##!`
point operators once, as adapters that build a real `rectangle`, instead of editing every call
site.** This catalog tags each site by whether the adapter handles it or it must be fixed.

Status: **draft / not started.** Tie execution to ui1's fate — ui1 and the `graphics` layer
are the only consumers; ui2 already uses `rectangle`.

---

## 1. Verified semantics (the whole difference, as originally defined)

Both styles store `{origin, corner}` **identically**. They differ in exactly one thing:
`width`/`height` (and the size-derived methods `size`, `area`, `center`, `translateTo:`),
because the old corner is the *inclusive* last pixel.

| | construction | covered pixels | `width` | `corner` / `right` / `bottom` |
|---|---|---|---|---|
| `a # b`  (new) | `rectangle from: a To: b`            | `a .. b-(1@1)`   | `b.x - a.x`     | `b` (exclusive, one past last pixel) |
| `a #! b` (old) | `oldStyleRectangle from: a To: b`    | `a .. b`         | `b.x - a.x + 1` | `b` (inclusive, the last pixel)      |
| `p ## s` (new) | `rectangle from: p To: p + s`        | `p .. p+s-(1@1)` | `s.x`           | `p + s`            |
| `p ##! s`(old) | `oldStyleRectangle from: p To: p + s maxPoint` | `p .. p+s-(1@1)` | `s.x` | `p + s - (1@1)`    |

where `maxPoint = (x-1)@(y-1)` (`point.self:158`).

`includes:` is **inclusive in both** (`rectangle.self:291`: `<= right`, `<= bottom`) so it is
*not* a differentiator. The new `rectangle` already implements the full suite the old one
overrode — `deltaList:` (`rectangle.self:217`), `intersect:` (`:333`), `union:` (`:819`),
`indent:` (`:305`), the stretch/shrink family (`:491-526, :712-747`), `translateTo:` (`:811`),
`width`/`height` — all in half-open form. The **only** missing member is `squinch`, with a
single caller (`uiNotifier.self:236`); add it to `rectangle` or inline it there.

## 2. Chosen approach — the Option-X adapter

### Why no adapter can be transparent

The two types have incompatible invariants:

- old: `width = corner.x − origin.x + 1`
- new: `width = corner.x − origin.x`

For a site built from endpoints `(a, b)`: if it reads `width` it wants `b−a+1`; if it reads
`corner` it wants `b`. A real `rectangle` can give `width = b−a+1` (forcing `corner = b+1`)
**or** `corner = b` (forcing `width = b−a`) — never both. So any uniform reinterpretation of
`#!` shifts *exactly one* of {all corner reads, all width reads} by one pixel. The adapter
relocates the band-aid to a single place; it cannot remove the wound.

| adapter | `#! b` becomes | `##! s` becomes | preserves | breaks |
|---|---|---|---|---|
| **X — width/region** | `self # (b + (1@1))` | `self ## s` | width, covered pixels (fills/blits/draws) | the **18** corner-readers |
| Y — corner | `self # b` | `self # (self + s maxPoint)` | corner, edge positions | the **32** size-consumers |

**Use X.** Y (which is also what a *naive* `oldStyleRectangle`→`rectangle` text replace lands
on, and what "reduced argument" describes) breaks the majority — every fill, `copyArea` blit,
`drawRectangle`, and the menu/button/textEditor draw comes out 1px small. X leaves all of those
untouched and breaks only the corner-readers, which are the minority and are listed in §4.

### The change (on `traits point`, where `#`/`##` live — not `traits rectangle`)

```
#!  pt = ( | | self #  (pt + (1@1)) ).
##! sz = ( | | self ## sz ).
```

Keep both as thin convenience constructors (the `ui1BackwardsCompatibility` category can stay).
`point rect` (`point.self:186`, `(0@0) #! maxPoint`) keeps working — it reduces to the
size-`self` rectangle `(0@0) ## self` — and may be simplified to that.

### What the adapter buys / doesn't

- **Buys:** the 32 size/region sites and the 6 sentinels need **no edit**; one reversible point
  of truth; and because the world becomes uniformly half-open, the `deltaList:`/`intersect:`/
  `union:` boundary mismatches (today's inclusive-vs-half-open seam) can resolve.
- **Doesn't:** the 18 corner-sensitive sites still shift +1 and **fail silently — no compile
  error.** They must still be found and fixed by analysis + visual check. Do not treat
  "replace + delete" as done until §4's "must fix" rows are walked.

## 3. Classification

- **A — adapter handles (no edit).** Consumer uses the rect as `{origin, size}` / covered
  region (fills, blits, outline draws, arc bounding boxes). Option-X preserves width and pixels.
- **B — must fix (corner shifted +1 by the adapter).** Consumer draws/erases *at* a raw corner,
  or does inclusive-corner / `succ`-`pred` region arithmetic. Re-examine in the half-open world;
  fix the corner read or rewrite the method. **Watch for double-compensation:** sites that
  already hand-adjust (`+ (1@1)`, `- (2@2)`) will be over-shifted once the adapter also adjusts.
- **C — sentinel/degenerate.** Blur/placeholder rects consumed as regions; the adapter preserves
  their width, so they are safe — just confirm the empty/degenerate test still classifies them.
- **D — test scaffolding.** Free to change or delete.

### Consumer conventions (verified)

| consumer | reads | class it implies |
|---|---|---|
| `drawing rectangle:Color:` → `image drawRectangle:GC:` (`drawing.self:393`) | x,y,w,h | A |
| `bitmap copy:To:At:` → `image copyArea:…` (`bitmap.self:215`) | x,y,w,h | A |
| `textField fill_rectangle:Inv:` (`textEditor.self:1440`, guards `width = 0`) | width | A |
| `arcWithin:` / `fillArcWithin:` (ellipse inscribed) | w,h + pos | A |
| `uiNester drawBodySunkenRectangle:` (`uiNester.self:362`, draws lines at `topRight`/`bottomRight`) | **corners** | B |
| `objBodyRegions scoop:/slice:` (`:247,:280`, splits with inclusive corner + `succ`) | **corners** | B |
| `slab` / `boxBitmap` bevel blit (`front`/`back` regions, corner-relative) | **corners** | B |

---

## 4. Per-file inventory

### A — adapter handles, NO EDIT

| file:line | expression | consumer |
|---|---|---|
| `drawing.self:133` | `(ctr-(r1@r1)) #! (ctr+(r2@r2))` → `arcWithin:` | arc bbox |
| `drawing.self:210` | same → `fillArcWithin:` | arc bbox |
| `movingBitmap.self:124` | `location ##! size` → `copy:To:` | copyArea |
| `movingShape.self:136` | `location ##! size` → `copy:To:` | copyArea |
| `eventHandler.self:185` | `pos ##! sz` (event arg rect) | region |
| `eventHandler.self:249` | `(event x@event y) ##! (event width@event height)` | region (x/y/w/h) |
| `toggleBody.self:238,269,272,275` | `(absoluteBound topLeft+(1@1)) #! (absoluteBound bottomRight-(2@2))` → `windowBitmap rectangle:…Color:` | outline draw (width preserved despite the fudges) |
| `menuButton.self:253,279,282,285` | same `windowBitmap rectangle:…Color:` pattern | outline draw |
| `menuButton.self:335` | `(bound topLeft+(1@1)) #! (bound bottomRight-(2@2))` → `drawBodyRectangle:` | outline draw |
| `hierarchicalMenu.self:434` | `(submenuIndicatorLocation: i) ##! submenuIndicatorSize` | draw |
| `menu.self:174` | `… ##! (itemExtent + (3@1))` | draw |
| `menu.self:203,204` | `(0@baseThickness) ##! faceExtent`, `(baseThickness@0) ##! faceExtent` → `copyFront:Back:` | blit |
| `textEditor.self:1382,1384,1386` | `left_top ##! …` → `fill_rectangle:Inv:` | fill (guards width) |
| `textEditor.self:3010` | `(0@0) ##! extent` | size rect |
| `textEditor.self:3603` | `(bound left succ @ bound top succ) ##! …` → `value_box:` | fill |
| `ui.self:828,835` | `(-5@-26) ##! (1280@1024)` / `(1152@797)` (screen bounds) | size rect |
| `ui.self:867,868,870` | `win position ##! win size` (lastRect/protoRect) | window geom (compared to each other — consistent) |
| `animator.self:455` | `pt ##! sliver size` (oldRect) | region |
| `animator.self:944` | `dest ##! bod size` → `slab copyFromRect:` | blit |
| `point.self:186` | `rect = (0@0) #! maxPoint` | reduces to `(0@0) ## self` (may simplify) |

### B — MUST FIX (corner shifted +1; verify/rewrite, one at a time, with a visual check)

| file:line | expression | why it breaks | fix |
|---|---|---|---|
| `textEditor.self:84` | `bound topLeft #! (bound bottomRight + (1@1))` → `drawBodySunkenRectangle:` | sunken draws lines *at* the corner; the manual `+(1@1)` plus the adapter's `+(1@1)` = **+2** | **drop the manual `+ (1@1)`** (→ `topLeft #! bottomRight`); confirm the sunken border lands on the same pixels |
| `boxBitmap.self:171,173` | `frontBound`/`backBound` from `corner = size maxPoint`, `depthPt = depth maxPoint`, `#!` | bevel geometry is inclusive-corner arithmetic (`corner x - depthPt x`) | rewrite the bevel-box math half-open; drop the `maxPoint`s. **This is the `bodyDark`-bottom/`bodyLight`-left strip epicenter** |
| `slab.self:122` | `bound = (front left@back top) #! (back right@front bottom)` | composes a bound from `back right`/`front bottom` (inclusive) for the bevel blitter | re-derive half-open; verify against the slab blit |
| `slab.self:134` | `r: pt #! pt` (`copyFromPoint:`) | 1×1 — adapter yields a correct 1×1 half-open rect | likely none; verify `copyFront:Back:` accepts it |
| `uiArrow.self:306` | `origin #! corner` (arrow bbox from `min`/`max` of points) | `corner` is the true furthest pixel; used for move-clipping/erase | likely fine if the consumer uses the region; **verify** it doesn't read the raw corner |
| `uiWorld.self:1683` | `(0 @ origrect top) #! (bod size x pred @ origrect bottom)` | region strip with a `pred` inclusive fudge | rewrite half-open; reconsider the `pred` |
| `objBodyRegions.self:164` | `location ##! (footerRight bottomRight - headerLeft topLeft)` | size = difference of corners — correct **iff** those corners are now half-open | re-examine in the half-open world; verify the extent |
| `objBodyRegions.self:221` | `pt #! (p + footerRight size)` | region build mixing size + corner | verify half-open |
| `objBodyRegions.self:255,256,286,287` | `br topLeft #! (br right @ y1)`, `(br left @ y2 succ) #! br bottomRight`, … | `scoop:`/`slice:` split a region into adjacent strips using inclusive corner + `succ` for non-overlap | rewrite both methods half-open as a unit; drop the `succ`, move the split point |
| `animator.self:1985,1986,1998,2003,2007` | morph damage strips: `bod bound topLeft #! (bod bound right @ y1)`, …; also `b2size: b2 size`, `prevBound: p1 #! botRt`, magic `8` | reads both `size` and raw corners, with manual `(1@1)` and the `8` offset | rewrite the morph method half-open carefully; **highest risk** |

### C — sentinels (adapter-safe; just confirm the degenerate test still holds)

| file:line | expression | meaning |
|---|---|---|
| `uiBody.self:842` | `ok = ((-1)@(-1)) #! ((1)@(1))` | sentinel "ok" rect |
| `uiWorld.self:1284,1655` | `blurRect <- ((-1)@(-1)) #! ((0)@(0))` | blur/damage accumulator seed |
| `animator.self:451,1736` | `blurRect <- ((-1)@(-1)) #! ((0)@(0))` | blur/damage accumulator seed |
| `menu.self:79` | `sourceBound <- ((0)@(0)) #! ((1)@(1))` | initial sourceBound |

### D — test scaffolding

| file:line | expression |
|---|---|
| `inBetweener.self:225,226` | `testFrom: (0@10) #! (100@200) To: (300@400) #! (500@600)` — convert or delete with the test |

### Not call sites — review individually at deletion time (NOT a `sed`)

- `liveJava/selfToJava.self:551,552` — Self→Java map: `#!`→`'oldStyleRectangleTo'`,
  `##!`→`'oldStyleRectangleExtent'`. Those strings are **Java-side method names**; blind-replacing
  to `'rectangleTo'` may dangle. Fix the Java side or leave.
- `klein/yodaSmallImage.self:304,794`, `klein/kleinSmallInterp.self:205` — image **manifest**
  module-name strings; remove with the module.
- `core/coreObjects.self:147` (`bootstrap read:`), `:88` (manifest), `:47` (comment) — remove.
- `storeStringNeeds`/`separator` differ (`' # '` vs `' #! '`); cosmetic — a stored `#!` still
  parses since the operator survives.

---

## 5. Recommended order

1. **Add the adapter.** Reimplement `#!`/`##!` on `traits point` per §2 (Option X). Add
   `squinch` to `rectangle` (or inline at `uiNotifier.self:236`). Build. The 32 Class-A sites
   and 6 Class-C sentinels should now render unchanged — eyeball a normal ui1 desktop.
2. **Walk the "must fix" rows** (§4 B), one method at a time, each with a build + visual check.
   This is the irreducible work; the adapter does not do it for you. **Verify the bevel strip
   resolves** when `boxBitmap`/`slab` are converted — if it doesn't, the fix is wrong.
3. **Mop up** the non-call-site references (§4, hand-edited), the test (D).
4. **Delete** `objects/core/oldStyleRectangle.self`, its `coreObjects` `bootstrap read:` +
   manifest entry, and `traits`/`globals oldStyleRectangle`. Prove with a from-scratch
   `all*.self` build (snapshots hide module-load failures — see the module-file gotchas note).

`#!`/`##!` survive as thin `rectangle` constructors; only the *type* goes away.

## 6. Counts

Code occurrences: 38 `#!` (incl. its def at `point.self:108`) + 21 `##!` + the `##!` def at
`point.self:122` = 60, across 18 consumer files + `point.self`.

Excluding the 2 operator definitions → **58 call sites**:

| class | count | disposition |
|---|---|---|
| A — adapter handles | 32 | no edit (incl. `point rect`, `point.self:186`) |
| B — must fix | 18 | rewrite/verify per row above |
| C — sentinel | 6 | adapter-safe; confirm degenerate test |
| D — test | 2 | with the test |

The adapter clears **38 of 58** sites with two operator edits; the remaining **18** are the
real work. Plus ~6 non-code references (Klein manifests ×3, liveJava map ×2, `coreObjects` read)
hand-edited at deletion.
