# Source this (do not execute) so cmake / xcodebuild / xcrun use a real Xcode.
# xcode-select on this machine is often Command Line Tools, which cannot drive
# the Xcode generator or the visionOS/iOS SDKs.
#
# If DEVELOPER_DIR is already set and exists, it wins. Otherwise pick the
# newest /Applications/Xcode*.app by CFBundleVersion (so a newer beta beats
# an older one without editing this file).
#
#   . vm64/select-xcode.sh
#   xcodebuild ...
#
# -- dmu 8/26

if [ -n "${DEVELOPER_DIR:-}" ] && [ -d "$DEVELOPER_DIR" ]; then
  :
else
  if [ -n "${DEVELOPER_DIR:-}" ]; then
    echo "select-xcode: DEVELOPER_DIR=$DEVELOPER_DIR is not a directory; picking newest Xcode" >&2
  fi
  _sx_newest_app=
  _sx_newest_ver=
  for _sx_app in /Applications/Xcode*.app; do
    [ -d "$_sx_app/Contents/Developer" ] || continue
    _sx_ver=$(/usr/libexec/PlistBuddy -c 'Print :CFBundleVersion' "$_sx_app/Contents/Info.plist" 2>/dev/null) || continue
    if [ -z "$_sx_newest_app" ]; then
      _sx_newest_app=$_sx_app
      _sx_newest_ver=$_sx_ver
      continue
    fi
    _sx_last=$(printf '%s\n%s\n' "$_sx_newest_ver" "$_sx_ver" | sort -V | tail -n 1)
    if [ "$_sx_last" = "$_sx_ver" ] && [ "$_sx_ver" != "$_sx_newest_ver" ]; then
      _sx_newest_app=$_sx_app
      _sx_newest_ver=$_sx_ver
    fi
  done
  if [ -n "$_sx_newest_app" ]; then
    DEVELOPER_DIR="$_sx_newest_app/Contents/Developer"
    export DEVELOPER_DIR
    echo "select-xcode: using $_sx_newest_app" >&2
  else
    echo "select-xcode: no /Applications/Xcode*.app found; cmake/xcodebuild will use xcode-select ($(xcode-select -p 2>/dev/null || echo unknown))" >&2
  fi
  unset _sx_newest_app _sx_newest_ver _sx_app _sx_ver _sx_last
fi
