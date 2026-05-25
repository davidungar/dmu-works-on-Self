#!/usr/bin/env python3
"""
Post-process a CMake-generated Xcode project. Two fixups:

1. Rewrite source-file references to use absolute, symlink-resolved paths.
   Why: vm64/src/ contains symlinks into vm/src/. Xcode's atomic save replaces
   symlinks with regular files, breaking the mirror (and Xcode often refuses to
   edit a symlinked file at all). NOTE: this is now a backstop -- vm64/CMakeLists.txt
   resolves the symlinks itself (resolve_symlinks_in_list), so a freshly generated
   project already points at the real files even after Xcode's ZERO_CHECK rerun.
   This rewrite only mops up any source that CMake still left SOURCE_ROOT-relative.

2. Set the Run scheme's Console to "Xcode (with Standard Input)" so the Self
   REPL can read stdin when launched from Xcode. CMake has no XCODE_SCHEME_*
   property for this (consoleMode), so it must be patched in after generation.
   -- claude & dmu 5/26

Usage: fix-xcode-paths.py <build-dir> <source-dir>
  e.g. fix-xcode-paths.py cmake-build-amd64-xcode vm64
"""
import os, re, sys

build_dir, src_dir = sys.argv[1], sys.argv[2]
pbx = os.path.join(build_dir, 'Self.xcodeproj', 'project.pbxproj')
src_root = os.path.realpath(src_dir)

with open(pbx) as f:
    s = f.read()

def repl(m):
    rel = m.group(1)
    real = os.path.realpath(os.path.join(src_root, rel))
    if not os.path.exists(real):
        return m.group(0)
    return 'path = "%s"; sourceTree = "<absolute>";' % real

new = re.sub(r'path = (src/[^;]+); sourceTree = SOURCE_ROOT;', repl, s)
n = s.count('sourceTree = SOURCE_ROOT;') - new.count('sourceTree = SOURCE_ROOT;')

if new != s:
    with open(pbx, 'w') as f:
        f.write(new)
print('fix-xcode-paths: rewrote %d file references in %s' % (n, pbx))


# Console = "Xcode (with Standard Input)" so the REPL can read stdin from the
# Xcode console. Empirically that option is the pair of LaunchAction attributes
# below: structuredConsoleMode="2" is the differentiator (plain "Xcode" omits
# it); consoleMode="0" matches what Xcode writes. CMake regenerates the scheme
# without them, so inject them here each run. Idempotent.  -- claude & dmu 5/26
scheme = os.path.join(build_dir, 'Self.xcodeproj', 'xcshareddata',
                      'xcschemes', 'Self.xcscheme')
if os.path.exists(scheme):
    with open(scheme) as f:
        sc = f.read()
    if 'structuredConsoleMode' in sc:
        print('fix-xcode-paths: console-with-stdin already present in %s' % scheme)
    else:
        sc2 = sc.replace(
            '<LaunchAction\n',
            '<LaunchAction\n      consoleMode = "0"\n'
            '      structuredConsoleMode = "2"\n', 1)
        if sc2 != sc:
            with open(scheme, 'w') as f:
                f.write(sc2)
            print('fix-xcode-paths: set console = "Xcode (with Standard Input)" '
                  'in %s' % scheme)
        else:
            print('fix-xcode-paths: WARNING no <LaunchAction to patch in %s'
                  % scheme)
