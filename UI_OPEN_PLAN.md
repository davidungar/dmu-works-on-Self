# Regularize UI1 / UI2 start-open (Quartz default, X optional)

## Goal

One verb — **`open`** — for both UIs, with the same backend suffixes. On macOS the default is **Quartz** (ui1 = 32-bit direct BGRA; ui2 = native Quartz). That path must work on a Mac that has never installed XQuartz — including **launching** `Self.app`. X11 remains available as an explicit choice: default `$DISPLAY` (else `:0`), or any display name. First `desktop open` of a session invites the user to try ui1. Handbook / readme / tutorial that describe starting the UIs are updated to match.

## Current state (problems)

| Call | What it actually does today |
|---|---|
| `desktop open` | **Prefers X11** (`openOnX11`), auto-starts XQuartz, falls back to Quartz |
| `desktop openOnQuartz` / `openOnX11` / `openNewWorldOn*` | Exist, but the default is the opposite of what we want |
| `desktop openNewWorld` | `copyOpenOnDisplay: ''` → Quartz on macOS (inconsistent with `open`) |
| `ui start` | `startOn: 'quartz'` (32-bit direct) — already the right default |
| `ui startOn: disp` | One argument is both backend name and X display. `'quartz'` → direct; anything else (including `'direct'`, `''`, `':0'`) → **X11 backend** |
| Resume / docs | Still say `ui copy startOn: 'direct'`, `ui startOn: ''` (indexed), `ui startOn: ':0'` (X11 required) |

`Self.app` **hard-links** `/opt/X11/lib/libX11.6.dylib` (and Xext, SM, ICE, fontconfig). On a machine without XQuartz, dyld refuses to launch the VM — even for Quartz-only use. CMake `find_package(X11 … REQUIRED)` also fails the **build** if X headers are missing.

Handbook `docs/handbook/ui1.rst` still says “UI1 only runs on 8 bit X11”. `build.rst` still says “UI1 (which requires X11)”. `readme.md` still documents `desktop open` as preferring X11. `shell help` only mentions `desktop open`.

## Public API (the regularization)

The verb is **`open`** on both objects. Same suffixes. Display names are **X display names only**; `'quartz'` stays an internal token for snapshot reincarnation, not something users type.

| | ui2 (`desktop`) | ui1 (`ui` / `ui1 ui`) |
|---|---|---|
| Default | `desktop open` | `ui open` |
| Force Quartz | `desktop openOnQuartz` | `ui openOnQuartz` |
| X11, `$DISPLAY` else `:0` | `desktop openOnX11` | `ui openOnX11` |
| X11, named display | `desktop openOnDisplay: 'host:0'` | `ui openOnDisplay: 'host:0'` |
| Extra world | `desktop openNewWorld` / `openNewWorldOnQuartz` / `openNewWorldOnX11` / `openNewWorldOnDisplay:` | (n/a; `ui copy open…` for a second ui1 window) |

- `open` — Quartz on macOS, X11 on Linux/BSD. ui1 Quartz is 32-bit direct (`rgbaPixmap`).
- `openOnQuartz` — Force Quartz. Error on non-macOS.
- `openOnX11` — X11 on `desktop xDisplayName`.
- `openOnDisplay: d` — X11 on that display (`'host:0'`, `':0'`, …).

**Compatibility (keep, do not advertise):** `ui start` = `ui open`; `ui startOnQuartz` / `startOnX11` / `startOnDisplay:` / `startOn: name` keep working. Dispatcher `startOn: name`: `'quartz'`, `'direct'`, `''` on macOS → Quartz direct; `'x11'` → `openOnX11`; anything else → `openOnDisplay: name`.

Indexed 8-bit Quartz stays **out of the public table**. Do not delete the indexed pixmap path; just stop telling people to use it.

`ui demo` is unchanged (tutorial, not a backend selector).

### Backend selection (do not mix)

```
ui open / desktop open
        │
        ├─ macOS  → Quartz (ui1: rgbaPixmap / MakeRGBAOffscreen Opaque: false)
        └─ else   → X11 on $DISPLAY or :0

ui openOnX11 / desktop openOnX11
        └─ X11 on $DISPLAY or :0
             ├─ if XQuartz installed but not running: start it (existing startXQuartzAndCanOpen:)
             └─ if X not installed / not openable: **fail with a message**, do not silently open Quartz
```

Today `windowCanvasPrototypeForDisplay:` auto-falls back to Quartz when X fails. That was right when `open` preferred X. After this change, **only implicit/default paths may fall back**. An explicit `OnX11` / `OnDisplay:` must not pretend it opened X.

`desktop open` on macOS becomes `openOnQuartz` (never probes X, never launches XQuartz).

## Machines without X installed

No new primitives and no glue changes. `XOpenDisplay` already fails into Self `IfFail:`; the crash case is only **launch** (dyld) and **calling X when the dylib was never loaded**.

**Runtime (launch).** Weak-link the X11 dylibs on macOS (`-Wl,-weak_library,…` for X11, Xext, SM, ICE, and fontconfig if used) so `Self.app` starts when `/opt/X11` is absent. That is a CMake linker flag, not a primitive.

**Before any X open (Self).** On macOS, if `/opt/X11/lib/libX11.6.dylib` (or the linked X11 path) is missing, `openOnX11` / `openOnDisplay:` / `canOpenXDisplay:` fail with a message and do **not** call `xlib display open:` (a weak NULL `XOpenDisplay` would crash). If the dylib is present but the server is down, keep the existing `IfFail:` / auto-start XQuartz path.

**Build.** On macOS, X11 is optional, not `REQUIRED`. If headers/libs are missing, configure with `SELF_X11=OFF` and still produce a Quartz-only `Self.app`. Linux/BSD keep `SELF_X11=ON` and still require X to build.

No new memcpy prim. No change to the ui1 direct blit path. No `_XlibIsPresent` (or any other) primitive.

## First-open invitation (ui2 → ui1)

On the **first** `desktop open` of a VM process that actually adds the initial morphs (the main desktop, not `openNewWorld`):

- If ui1 is in the world, not `-headless`, not a test (`ui2test`, structureEditing’s temporary desktop, …), drop a small invitation morph in the world (not a blocking `userQuery`).
- Copy: ui1 is the original cartoon-animation Self UI and now runs natively; button **Open ui1** sends `ui open` (leaves ui2 running); dismiss control removes the morph.
- Session flag so it appears once per process. Skip `returnFromSnapshot` reopen (they already have a world).
- Tests that call `desktop open` must not see it (gate on the same skip list / a `desktop suppressUI1Invitation` flag).

Do not persist to disk: `all2.self` file-in has no snapshot, and “first open of this session” is the right grain.

## Documentation (“the website”)

In-tree sources that *are* handbook.selflanguage.org + the repo landing pages:

- `docs/handbook/ui1.rst` — rewrite: Quartz direct is the default; X11 8-bit is optional; drop WineHQ-as-the-only-path; `ui open` / `ui openOnX11` / `ui openOnDisplay:`.
- `docs/handbook/build.rst` — “Load UI1 (X11 only)” is wrong; `desktop open` example is Quartz on macOS; note X is not required to run.
- `docs/handbook/morphic.rst` — keep X as the *collaboration / remote* story; opening a local world no longer implies X.
- `readme.md` — invert the X11 section: Quartz is the normal UI; XQuartz is for sharing, remote display, and classic 8-bit ui1. Command table matches the API above.
- `objects/readme.md`, `shell help` — mention `desktop open` and `ui open`.
- `docs/tutorial/Morphic/Morphic/Desktop.html` and `Objects.html` — `openNewWorldOnDisplay:` remains X; default `open` / `openNewWorld` are Quartz on macOS.
- New `ChangeLog.md` entry for this change. Do not rewrite old 2010-era bullets.

Out of scope: `selflanguage.org` itself (moved out of this repo). Publishing the Sphinx handbook to handbook.selflanguage.org is a deploy step after the rst edits, not part of the Self change.

## Repo copy of this plan

Write the approved plan to **`UI_OPEN_PLAN.md`** at the repo root (next to `UI1_ON_QUARTZ_RESUME.md`). That is the file to keep; the session `plan.md` is only the working copy.

## Files

**Self API + invitation**

- `objects/ui2/desktop.self` — `open` → Quartz on macOS; add/align `OnDisplay:`; invitation hook
- `objects/ui2/worldMorph.self` — explicit X must not Quartz-fallback; keep auto-start XQuartz only for explicit X
- `objects/ui1/ui1.self` — `open` / `openOnQuartz` / `openOnX11` / `openOnDisplay:`; `start*` as aliases; fix `prototypeNamed:`
- `objects/core/shell.self` — help text
- `objects/ui2/ui2test.self` (and any `desktop open` test) — suppress invitation

**CMake (no-X launch) — linker only, no prims**

- `vm64/cmake/dependencies.cmake` — X11 not REQUIRED on macOS; weak-link the X dylibs when present
- `objects/ui2/worldMorph.self` `canOpenXDisplay:` — Self-level “dylib missing?” guard before `xlib display open:`

**Docs** — files listed above.

## Testing

- **No snapshots.** File-in `-f objects/all2.self`. UI1 visual work still uses the **Release** `Self.app`. Do not start a second VM if one is up.
- macOS, XQuartz present: `desktop open` → Quartz window, no XQuartz launch; invitation morph once; **Open ui1** opens sage ui1; `desktop openOnX11` still opens X; `desktop openOnDisplay: 'host:0'` still works.
- macOS, XQuartz **quit**: explicit `openOnX11` auto-starts it (existing path).
- macOS, XQuartz **not installed** (or `otool -L` shows weak X11 and `/opt/X11` hidden): `Self.app` launches; `desktop open` and `ui open` work; `openOnX11` prints a clear failure.
- Linux: `desktop open` / `ui open` still X11; `openOnQuartz` errors.
- `ui2test` / `desktop open` in tests: no invitation morph.
- Indexed ui1 and 8-bit `foregroundColor:` index branch must keep working if someone still files that path; not part of the advertised API.

## Out of scope

- Finishing leftover ui1-on-Quartz visual bugs (arrows, swoop, grow triangle, hardcoded footers).
- Changing ui1 fonts, blit math, or adding `CopyRGBAArea_wrap`.
- Rewriting historical `ChangeLog.md` entries.
- Deploying handbook.selflanguage.org.
