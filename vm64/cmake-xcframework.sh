#!/bin/sh
# Build libSelfVM.a for visionOS device + simulator and bundle into
# SelfVM.xcframework that SpatialSelf links.
# -- claude & dmu May 2026

set -e
HERE="$(cd "$(dirname "$0")" && pwd)"
SRC_DIR="$HERE"
OUT_DIR="$HERE/../cmake-build-xcframework"
DEVICE_DIR="$OUT_DIR/xros"
SIM_DIR="$OUT_DIR/xrsimulator"
CONFIG="${CONFIG:-RelWithDebInfo}"  # keep DWARF so AVP crashes are debuggable

build_slice() {
  sdk="$1"
  build_dir="$2"
  cmake -S "$SRC_DIR" -B "$build_dir" -G Xcode \
    -DCMAKE_SYSTEM_NAME=visionOS \
    -DCMAKE_OSX_SYSROOT="$sdk" \
    -DCMAKE_OSX_ARCHITECTURES=arm64 \
    -DCMAKE_OSX_DEPLOYMENT_TARGET=1.0 \
    -DSELF_AS_LIBRARY=ON \
    -DSELF_QUARTZ=OFF \
    -DSELF_X11=OFF
  "$HERE/fix-xcode-paths.py" "$build_dir" "$SRC_DIR"
  xcodebuild -project "$build_dir/Self.xcodeproj" -target Self -configuration "$CONFIG" -sdk "$sdk"
}

build_slice xros           "$DEVICE_DIR"
build_slice xrsimulator    "$SIM_DIR"

DEVICE_LIB="$DEVICE_DIR/$CONFIG-xros/libSelfVM.a"
SIM_LIB="$SIM_DIR/$CONFIG-xrsimulator/libSelfVM.a"
XCFRAMEWORK="$OUT_DIR/SelfVM.xcframework"

[ -f "$DEVICE_LIB" ] || { echo "missing $DEVICE_LIB"; exit 1; }
[ -f "$SIM_LIB" ]    || { echo "missing $SIM_LIB";    exit 1; }

rm -rf "$XCFRAMEWORK"
xcodebuild -create-xcframework \
  -library "$DEVICE_LIB" -headers "$HERE/build_support/embed" \
  -library "$SIM_LIB"    -headers "$HERE/build_support/embed" \
  -output "$XCFRAMEWORK"

echo "Built $XCFRAMEWORK"
