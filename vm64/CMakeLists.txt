#!/usr/bin/env cmake
set(PROJECT_NAME Self)

#
# Prologue
#
# We need 3.12. This may be raised to 3.16 for precompiled headers at a later point.
cmake_minimum_required(VERSION 3.12 FATAL_ERROR)

#
# Actual start.
#
list(APPEND CMAKE_MODULE_PATH ${CMAKE_CURRENT_SOURCE_DIR}/cmake)

project(${PROJECT_NAME} C CXX ASM)

if(APPLE)
  enable_language(OBJC)
  enable_language(OBJCXX)
endif()

if(DEFINED SELF_MACOSX_XCODEPROJECTNAME)
else()
  set(SELF_MACOSX_XCODEPROJECTNAME ${PROJECT_NAME})
endif()

# setup the routines and variables we might use
# sets 
#  ${platform} ${platform_processor} ${platform_compiler}
#  ${LOCAL_CMAKE_DIR}
include(common)


# Resolve the vm64/src symlink mirror to the real vm/src files before the
# sources reach the (Xcode) project. vm64/src/ is ~350 symlinks into vm/src/;
# if the project references them through the symlinks, Xcode's atomic save
# replaces the symlink with a regular file (breaking the mirror) or refuses to
# edit it at all ("cannot edit in Xcode"). Resolving here, in CMake, bakes the
# real paths into every (re)generation -- including Xcode's ZERO_CHECK rerun --
# so the fix can't silently regress the way the old post-generation pbxproj
# rewrite (fix-xcode-paths.py) did. Real (non-symlinked) vm64 sources resolve to
# themselves and are unaffected.  -- claude & dmu 5/26
macro(resolve_symlinks_in_list _listVar)
  set(_resolved)
  foreach(_f ${${_listVar}})
    get_filename_component(_real "${_f}" REALPATH)
    list(APPEND _resolved "${_real}")
  endforeach()
  set(${_listVar} ${_resolved})
endmacro()
get_filename_component(SELF_REAL_SRC_DIR "${CMAKE_CURRENT_SOURCE_DIR}/src" REALPATH)

# sets SRC_src
add_subdirectory(src)
# Keep the vm64/src (symlink) paths for the header search path below: vm64/src
# holds 64-bit-specific headers (config.hh, types.hh, ...) that must shadow the
# 32-bit originals in vm/src. Only the project's file references / compile inputs
# get resolved to real paths (the edit-in-Xcode fix).
set(SRC_src_inc ${SRC_src})
resolve_symlinks_in_list(SRC_src)
# for IDEs, make the source nice.
source_groups_from_src(SRC_src "${SELF_REAL_SRC_DIR}/")

# aarch64 JIT headers are symlinked from amd64 but have no source files;
# add their directories to the include path for the precompiled header.
if(TARGET_ARCH STREQUAL "AARCH64_ARCH")
  include_directories(
    ${CMAKE_CURRENT_SOURCE_DIR}/src/aarch64/asm
    ${CMAKE_CURRENT_SOURCE_DIR}/src/aarch64/fast_compiler
    ${CMAKE_CURRENT_SOURCE_DIR}/src/aarch64/lookup
    ${CMAKE_CURRENT_SOURCE_DIR}/src/aarch64/sic
    ${CMAKE_CURRENT_SOURCE_DIR}/src/aarch64/zone
  )
endif()

# use glue-directory, but put binaries into a local dir
# sets SRC_glue
add_subdirectory(${SELF_GLUE_DIRECTORY} _glue)
set(SRC_glue_inc ${SRC_glue})
resolve_symlinks_in_list(SRC_glue)
source_group("glue" FILES ${SRC_glue} "${SELF_REAL_SRC_DIR}/")

list(APPEND SRC ${SRC_src} ${SRC_glue})

# get platform-dependent configuration
# sets 
#   $GUI_TYPE 
#   $EXTRA_LIBRARIES 
#   $COMPILER
#   $TARGET_OS_VERSION $TARGET_OS_FAMILY
include(${platform})

# set up the self-specific include-directories.  Derive them from the vm64/src
# (symlink) paths, NOT the resolved real paths: vm64/src must be on the search
# path ahead of vm/src so its 64-bit headers win (otherwise the 32-bit config.hh
# is found first -> "64bit not supported yet").
list(APPEND SRC_inc ${SRC_src_inc} ${SRC_glue_inc})
include_directories_from_src(SRC_inc)


# setup general definitions. 
include(setup)

# setup configuration-specific (release/debug) stuff
include(configurations)

# specify the libs we depend on
# sets ${3RD_PARTY_LIBS}
include(dependencies)

# 
# generate dependent include files.
# sets ${SELF_PREFIX_HEADER}
#
get_directory_property(le_dirs INCLUDE_DIRECTORIES)

include(makeDeps)

# we need a vmDate thing.
# sets $SRC_VMDATE
include(setupVmDate)
list(APPEND SRC ${SRC_VMDATE})

# pre-compiled headers. (not for Xcode, has its own way)
if(NOT CMAKE_GENERATOR MATCHES Xcode)
  add_pch_rule(${SELF_PREFIX_HEADER} SRC)
endif()

# SELF_AS_LIBRARY: build the VM as a static library (libSelfVM.a) with
# `self_vm_main` as the entry point, rather than as a standalone executable.
# Defaults ON for embedded Apple platforms (visionOS/iOS/tvOS), where the
# binary is link-time hosted by a SwiftUI app (SpatialSelf in
# ~/code/separatingForInlining).
if(CMAKE_SYSTEM_NAME MATCHES "visionOS|xrOS|iOS|tvOS")
  option(SELF_AS_LIBRARY "Build Self VM as a static library, not an executable" ON)
else()
  option(SELF_AS_LIBRARY "Build Self VM as a static library, not an executable" OFF)
endif()

## setup the acutal executable (or library).
#
if(SELF_AS_LIBRARY)
  add_library(${PROJECT_NAME} STATIC ${SRC})
  # Library artifact is libSelfVM.a (matches the self_vm_* symbol prefix);
  # the CMake target stays `Self` so existing tooling continues to work.
  set_target_properties(${PROJECT_NAME} PROPERTIES OUTPUT_NAME SelfVM)
  target_compile_definitions(${PROJECT_NAME} PRIVATE SELF_AS_LIBRARY=1)
else()
  add_executable(${PROJECT_NAME} ${GUI_TYPE} ${SRC})
endif()
add_dependencies(${PROJECT_NAME} create_vmDate_${PROJECT_NAME})



# setup prefix-header for target

include_prefix_header(${PROJECT_NAME} ${SELF_PREFIX_HEADER})

# setup linked libraries for target
target_link_libraries(${PROJECT_NAME} ${EXTRA_LIBRARIES} ${3RD_PARTY_LIBS})

# setup target-specific definitions
setup_target(${PROJECT_NAME})

configure_end()
