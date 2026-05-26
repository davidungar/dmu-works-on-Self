Self
====

Experimental 64 Bit Version
===========================

This is an experimental branch of the Self VM.

It is a port of the Self VM to 64 bit systems.

It is downstream from the main Self repo at https://github.com/russellallen/self

At the moment the interpreter is working, but the JIT has not been ported.

You can build the VM by:

```
cmake -S vm64 -B build -DCMAKE_BUILD_TYPE=Release 
cmake --build build -j$(nproc)   
```

It should build on MacOS (arm64) and Linux (amd64 and arm64).

To generate an Xcode project, use `vm64/configure.sh macos` (or
`vm64/configure.sh visionos` for visionOS) rather than `cmake -G Xcode`
directly: the wrapper runs `fix-xcode-paths.py` afterwards so Xcode's atomic
saves don't clobber the `vm64/src` → `vm/src` symlink mirror. The per-platform
knobs live in `vm64/CMakePresets.json`; run `cmake --list-presets` to see them.

Building for Apple Vision Pro (visionOS)
----------------------------------------

The visionOS build is a headless VM (no Quartz/AppKit, no X11) that produces
a static library `libSelf.a` instead of an executable: visionOS has no
terminal, so the VM is hosted by a SwiftUI app (**SpatialSelf**, in
`~/code/separatingForInlining/`) that owns a `TerminalView` window and pipes
stdin/stdout/stderr into the library through the C entry point in
`vm64/build_support/embed/self_vm.h`.

Generate the Xcode project with `vm64/configure.sh visionos`, which lands
in `cmake-build-AVP-compilation-check/` — deliberately separate from the macOS
Xcode project in `cmake-build-xcode-macos/`.

To produce the device+simulator xcframework that SpatialSelf consumes, run
`vm64/configure.sh xcframework`. The output lands in
`cmake-build-AVP-framework/Self.xcframework`.

To run on Apple Vision Pro, open
`~/code/separatingForInlining/Enchilada.xcworkspace` and run the
**SpatialSelf** scheme.

Use a separate build directory for each target (macOS, visionOS, command-line
Release, etc.). CMake caches the toolchain, sysroot, and architecture from the
first configure, so re-targeting a single build directory between macOS and
visionOS produces stale headers, mismatched SDK paths, or link failures. Always
configure each platform/generator pair into its own directory.

Cross-compiling for visionOS uses a host-tool sub-project to build the
code-generation tools that run on the Mac during the build; this is handled
automatically by the wrapper.

Running the UI under X11 (XQuartz) on macOS
-------------------------------------------

On macOS the Self UI normally uses the native Quartz backend, which is the
simplest and fastest choice for solo, local work. Set up the X11 (XQuartz)
backend if you might ever want either of:

- a *collaborative* session -- Self lets several people share one world, even
  work together in the same editor window, with each person's display served
  over X11, optionally from another machine; or
- to try ui1, the original Self environment and perhaps the first IDE to apply
  the principles of cartoon animation to a user interface (Bay-Wei Chang and
  David Ungar, "Animation: From Cartoons to the User Interface," UIST '93,
  pp. 43-55 -- see `docs/papers/animation.pdf` -- later honored with the 2004
  ACM UIST Lasting Impact Award). ui1 needs an 8-bit X display, so it runs only
  under X11.

(X11 is also handy for plain remote display.)

### Opening an X11 world

- `desktop open` -- the main desktop, preferring X11 (falls back to Quartz if X
  cannot be started)
- `desktop openOnX11` / `desktop openOnQuartz` -- the main desktop, forcing X11
  or Quartz
- `desktop openNewWorldOnX11` / `desktop openNewWorldOnQuartz` -- an additional
  world (use these for a collaborative session)
- `desktop openNewWorldOnDisplay: 'host:0'` -- an additional world on a specific
  X display

`desktop open` and the `...OnX11` commands target `$DISPLAY` -- the standard X
environment variable that names your X server -- falling back to `:0` if it is
unset. The `:0` fallback is ordinary X notation: a display name is
`host:number.screen`, so `:0` means "display 0 on your local host", the first X
server on this machine.

### Installing XQuartz

Install from https://www.xquartz.org or `brew install --cask xquartz`. You do
not normally launch it yourself: XQuartz sets `$DISPLAY`, and Self starts
XQuartz on demand the first time you open an X11 world (printing a brief
"Starting X11" notice). If X still cannot be opened, Self falls back to Quartz
and, once per session, points you back to this section.

### The one setting you must change

```
defaults write org.xquartz.X11 enable_key_equivalents -bool false
```

(then quit and relaunch XQuartz -- it reads its preferences only at launch).

With key equivalents enabled (the XQuartz default), XQuartz captures every
Command-key combination (Cmd-C, Cmd-M, Cmd-W, ...) for its own menus, so Self
never sees them: copy/paste won't work and Self can't bind any Cmd-key. Turning
it off hands all Command combos to Self. It is all-or-nothing; XQuartz offers
no per-shortcut control.

### Other preferences

| Tab | Setting | Use | When it matters |
|-----|---------|-----|-----------------|
| Output     | Colors -> 256 (8-bit)                  | on      | only if you run ui1, which requires an 8-bit display; ui2 and Quartz don't care |
| Input      | Emulate three button mouse             | on      | unless your mouse already has three buttons -- the Self UI uses middle and right |
| Input      | Option keys send Alt_L and Alt_R       | preference | ON makes Option act as Alt (Self uses Alt only for Alt+arrow and Alt+Enter); OFF lets Option compose accented characters |
| Input      | Follow system keyboard layout          | preference | ON tracks your macOS keyboard layout (matters for non-US layouts); OFF uses XQuartz's built-in keymap -- no Self-specific effect |
| Security   | Authenticate connections               | on      | safe default |
| Security   | Allow connections from network clients | off     | local-only; turn on only for a multi-machine collaborative session |
| Pasteboard | sync options                           | default | not relevant to Self (see below) |
| Windows    | focus / click-through / shading        | default | preference only |

`enable_key_equivalents` (off) is always required. *Emulate three button mouse*
is required for any Self X11 UI -- both ui1 and ui2 use the middle and right
buttons -- unless your mouse already has three. *256-color/8-bit* is required
only for ui1 (ui2 and Quartz don't care). Everything else is preference.

### Copy and paste

Self writes the macOS pasteboard (`NSPasteboard`) directly, not X cut buffers
or X selections (XQuartz bridges neither). So with `enable_key_equivalents`
off, Cmd-C in a Self X11 window copies to the Mac pasteboard and Cmd-V pastes
from it, fully interoperating with native Mac apps. XQuartz's own
Pasteboard-sync preferences only affect X-selection interop between *other* X
clients and the Mac pasteboard; they have no effect on Self.


AI Disclosure Statement
=======================

This port is LLM asssisted, using primarily Claude Anthropic.


About Self
==========

The Self homepage is at http://selflanguage.org

Please go there for prebuilt binaries for Linux, NetBSD and FreeBSD, documentation,
blogs and forums.

For information on:

  * Using Self, read the [Self Handbook][1]
  * Building a Self VM, read the Handbook's [VM building instructions][2]
  * Building a Self World, read the [world building instructions][3]
  
[1]: http://handbook.selflanguage.org/2017.1/
[2]: http://handbook.selflanguage.org/2017.1/buildvm.html
[3]: http://handbook.selflanguage.org/2017.1/buildworld.html
