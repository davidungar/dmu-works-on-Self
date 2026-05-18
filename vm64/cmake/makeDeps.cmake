#!/usr/bin/env cmake

# sets ${SELF_PREFIX_HEADER}

set(makeDeps makeDeps_${PROJECT_NAME})
set(_orig_incldb ${SELF_BUILD_SUPPORT_DIR}/includeDB.in)
set(_incl_parent_dir ${CMAKE_CURRENT_BINARY_DIR})
set(_incl_dest_dir ${_incl_parent_dir}/incls)
set(_incldb ${CMAKE_CURRENT_BINARY_DIR}/includeDB)


set(SRC_makeDeps ${SELF_BUILD_SUPPORT_DIR}/makeDeps.cpp)

if(CMAKE_CROSSCOMPILING)
  # visionOS/iOS/tvOS: makeDeps must run on the build host, not the target.
  # Build it via a separate ExternalProject configured for the host toolchain.
  # -- claude & dmu May 2026
  include(ExternalProject)
  # Force the macOS SDK explicitly: when xcodebuild drives a cross-compile it
  # leaks SDKROOT=<xrOS> into sub-process env vars, which would otherwise make
  # the host tool link against the wrong libc++.  -- claude & dmu May 2026
  execute_process(COMMAND xcrun --sdk macosx --show-sdk-path
    OUTPUT_VARIABLE _host_macos_sdk OUTPUT_STRIP_TRAILING_WHITESPACE)
  ExternalProject_Add(makeDeps_host
    SOURCE_DIR  ${SELF_BUILD_SUPPORT_DIR}/host_tools
    CMAKE_ARGS  -DCMAKE_BUILD_TYPE=Release
                -DCMAKE_OSX_SYSROOT=${_host_macos_sdk}
                -DCMAKE_OSX_ARCHITECTURES=${CMAKE_HOST_SYSTEM_PROCESSOR}
                -DCMAKE_OSX_DEPLOYMENT_TARGET=11.0
                -UCMAKE_SYSTEM_NAME
                -UCMAKE_TOOLCHAIN_FILE
    CMAKE_GENERATOR "Unix Makefiles"
    INSTALL_COMMAND ""
    BUILD_BYPRODUCTS <BINARY_DIR>/makeDeps
  )
  ExternalProject_Get_Property(makeDeps_host BINARY_DIR)
  set(makeDeps ${BINARY_DIR}/makeDeps)
  set(_makeDeps_dep makeDeps_host)
else()
  add_executable(${makeDeps} ${SRC_makeDeps})
  setup_target(${makeDeps})
  set_target_properties(${makeDeps} PROPERTIES FOLDER "${SELF_HELPER_FOLDER}")
  set(_makeDeps_dep ${makeDeps})
endif()



configure_file(${_orig_incldb} ${_incldb})

set(
  SELF_GENERATED_INLCUDE_FILES_DIR
  "${_incl_dest_dir}"
)


set(
  SELF_PREFIX_HEADER
  ${SELF_GENERATED_INLCUDE_FILES_DIR}/_precompiled.hh
)
include_directories(${SELF_GENERATED_INLCUDE_FILES_DIR})


#
# to be compatible with old process:
#
#
set(SELF_PREFIX_PREFIX_THRESHOLD
  ${SELF_PREFIX_PREFIX_THRESHOLD_INIT} # DO NOT SET ABVOE 20. Breaks X-includes!
  CACHE STRING
  "The minimum number of times for an include file to occur bein included to be included in the prefix header"
)


mark_as_advanced(SELF_PREFIX_PREFIX_THRESHOLD)


set(_incl_threshold -${SELF_PREFIX_PREFIX_THRESHOLD})

#
# HACK: for now, we only use the Prefix header as output,
# we have yet no way to know which headers are all produced.
#
add_custom_command(
  OUTPUT ${SELF_PREFIX_HEADER}
  COMMAND mkdir -p ${_incl_dest_dir}
  COMMAND ${makeDeps} ${_incl_threshold} ${_incldb}
  DEPENDS ${_incldb} ${_makeDeps_dep}
  WORKING_DIRECTORY ${_incl_parent_dir}
)

# For aarch64: source files are symlinked from amd64 and reference
# _xxx_amd64.cpp.incl, but makeDeps generates _xxx_aarch64.cpp.incl.
# Create aliases so both names resolve.
if(TARGET_ARCH STREQUAL "AARCH64_ARCH")
  set(_aarch64_incl_aliases
    search conversion framePieces frame frame_format
    frame_iterator registerLocator runtime stubs
    uncommonBranch vframe
  )
  foreach(_stem ${_aarch64_incl_aliases})
    add_custom_command(
      OUTPUT ${SELF_PREFIX_HEADER}
      COMMAND ${CMAKE_COMMAND} -E create_symlink
        _${_stem}_aarch64.cpp.incl
        ${_incl_dest_dir}/_${_stem}_amd64.cpp.incl
      APPEND
    )
  endforeach()
endif()
