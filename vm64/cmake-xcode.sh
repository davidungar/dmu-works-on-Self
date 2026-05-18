#!/bin/sh
# Generate the Xcode project, then rewrite source-file references to
# realpath()-resolved locations (so Xcode's atomic save doesn't break
# the vm64/src -> vm/src symlink mirror).  Usage:
#   vm64/cmake-xcode.sh [extra cmake args...]
# -- claude & dmu May 2026

set -e
HERE="$(cd "$(dirname "$0")" && pwd)"
SRC_DIR="$HERE"
BUILD_DIR="$HERE/../cmake-build-xcode"

cmake -S "$SRC_DIR" -B "$BUILD_DIR" -G Xcode "$@"
exec "$HERE/fix-xcode-paths.py" "$BUILD_DIR" "$SRC_DIR"
