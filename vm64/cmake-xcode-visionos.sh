#!/bin/sh
# Generate the Xcode project targeting visionOS (xrOS).  Headless VM build:
# no AppKit/Cocoa window system, no Mac app bundle.  Mirrors cmake-xcode.sh.
# -- claude & dmu May 2026

set -e
HERE="$(cd "$(dirname "$0")" && pwd)"
SRC_DIR="$HERE"
BUILD_DIR="$HERE/../cmake-build-visionos-xcode"

cmake -S "$SRC_DIR" -B "$BUILD_DIR" -G Xcode \
  -DCMAKE_SYSTEM_NAME=visionOS \
  -DCMAKE_OSX_SYSROOT=xros \
  -DCMAKE_OSX_ARCHITECTURES=arm64 \
  -DCMAKE_OSX_DEPLOYMENT_TARGET=1.0 \
  -DSELF_QUARTZ=OFF \
  -DSELF_X11=OFF \
  "$@"

exec "$HERE/fix-xcode-paths.py" "$BUILD_DIR" "$SRC_DIR"
