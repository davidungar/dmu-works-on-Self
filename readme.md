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

To generate an Xcode project, use `vm64/cmake-xcode.sh` (or
`vm64/cmake-xcode-visionos.sh` for visionOS) rather than `cmake -G Xcode`
directly: the wrappers run `fix-xcode-paths.py` afterwards so Xcode's atomic
saves don't clobber the `vm64/src` → `vm/src` symlink mirror.

Building for Apple Vision Pro (visionOS)
----------------------------------------

The visionOS build is a headless VM (no Quartz/AppKit, no X11). Generate its
Xcode project with `vm64/cmake-xcode-visionos.sh`, which lands in
`cmake-build-visionos-xcode/` — deliberately separate from the macOS Xcode
project in `cmake-build-xcode/`.

Use a separate build directory for each target (macOS, visionOS, command-line
Release, etc.). CMake caches the toolchain, sysroot, and architecture from the
first configure, so re-targeting a single build directory between macOS and
visionOS produces stale headers, mismatched SDK paths, or link failures. Always
configure each platform/generator pair into its own directory.

Cross-compiling for visionOS uses a host-tool sub-project to build the
code-generation tools that run on the Mac during the build; this is handled
automatically by the wrapper.


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
