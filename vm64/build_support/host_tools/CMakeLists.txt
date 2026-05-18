# Standalone build of host-only build-time helpers (currently just makeDeps).
# Configured via ExternalProject_Add from vm64/cmake/makeDeps.cmake when the
# main build is cross-compiling (e.g. visionOS), so the helper runs on the
# build host rather than the target.  -- claude & dmu May 2026
cmake_minimum_required(VERSION 3.12)
project(SelfHostTools CXX)

add_executable(makeDeps ${CMAKE_CURRENT_SOURCE_DIR}/../makeDeps.cpp)

# Apple Silicon macOS kills unsigned arm64 binaries with SIGKILL on first
# exec.  Ad-hoc sign so the build-time tool can actually run.
# -- claude & dmu May 2026
if(APPLE)
  add_custom_command(TARGET makeDeps POST_BUILD
    COMMAND codesign --sign - --force $<TARGET_FILE:makeDeps>
    VERBATIM)
endif()
