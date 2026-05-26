#!/bin/sh
# Unified, preset-driven (re)configuration of the Self VM build dirs.
# Replaces cmake-xcode.sh / cmake-xcode-visionos.sh / cmake-xcframework.sh.
# All platform knobs now live in CMakePresets.json; this wrapper adds the two
# steps a preset cannot express:
#   - the fix-xcode-paths.py post-process (realpath sources + scheme console),
#   - for the xcframework, building both slices and bundling them with
#     xcodebuild -create-xcframework.
# Usage:
#   vm64/configure.sh macos        # editable macOS Self.app project
#   vm64/configure.sh macos-lib    # macOS headless libSelfVM.a (link into a host app)
#   vm64/configure.sh visionos     # visionOS VM project (libSelfVM.a) -- SpatialSelf links this; regen before building it
#   vm64/configure.sh xcframework  # build device+sim slices -> SelfVM.xcframework
# Extra args after the subcommand are forwarded to cmake (macos/visionos only).
# Set CONFIG=Debug for a faster, unoptimized xcframework (default RelWithDebInfo
# keeps DWARF so AVP crashes stay debuggable).
# -- claude & dmu 5/26

set -e
HERE="$(cd "$(dirname "$0")" && pwd)"
cd "$HERE"   # so cmake --preset finds CMakePresets.json next to CMakeLists.txt

# configure_one <preset> <binaryDir> [extra cmake args...]
configure_one() {
  preset="$1"; bdir="$2"; shift 2
  cmake --preset "$preset" "$@"
  "$HERE/fix-xcode-paths.py" "$bdir" "$HERE"
}

cmd="${1:-}"
[ $# -gt 0 ] && shift

case "$cmd" in
  macos)
    configure_one macos "$HERE/../cmake-build-xcode-macos" "$@"
    ;;
  macos-lib)
    configure_one macos-lib "$HERE/../cmake-build-macos-lib" "$@"
    ;;
  visionos)
    configure_one visionos "$HERE/../cmake-build-AVP-compilation-check" "$@"
    ;;
  xcframework)
    CONFIG="${CONFIG:-RelWithDebInfo}"
    OUT="$HERE/../cmake-build-AVP-framework"
    DEV="$OUT/xros"; SIM="$OUT/xrsimulator"
    configure_one xcframework-device "$DEV"
    configure_one xcframework-sim    "$SIM"
    xcodebuild -project "$DEV/Self.xcodeproj" -target Self -configuration "$CONFIG" -sdk xros
    xcodebuild -project "$SIM/Self.xcodeproj" -target Self -configuration "$CONFIG" -sdk xrsimulator
    DEVICE_LIB="$DEV/$CONFIG-xros/libSelfVM.a"
    SIM_LIB="$SIM/$CONFIG-xrsimulator/libSelfVM.a"
    XCFRAMEWORK="$OUT/SelfVM.xcframework"
    [ -f "$DEVICE_LIB" ] || { echo "missing $DEVICE_LIB"; exit 1; }
    [ -f "$SIM_LIB" ]    || { echo "missing $SIM_LIB";    exit 1; }
    rm -rf "$XCFRAMEWORK"
    xcodebuild -create-xcframework \
      -library "$DEVICE_LIB" -headers "$HERE/build_support/embed" \
      -library "$SIM_LIB"    -headers "$HERE/build_support/embed" \
      -output "$XCFRAMEWORK"
    echo "Built $XCFRAMEWORK"
    ;;
  *)
    echo "usage: $0 {macos|macos-lib|visionos|xcframework} [extra cmake args]" >&2
    echo "  CONFIG=Debug $0 xcframework  # faster, unoptimized slices" >&2
    exit 2
    ;;
esac
