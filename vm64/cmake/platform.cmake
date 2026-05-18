#!/usr/bin/env cmake

# CPU detection

option(SELF_FORCE_I386 "Force 32-bit i386 build on an x86_64 host" OFF)

# Apple cross-compile (visionOS/iOS/tvOS) leaves CMAKE_SYSTEM_PROCESSOR empty;
# fall back to the first entry of CMAKE_OSX_ARCHITECTURES (which is a list —
# may contain multiple archs for a fat binary) so the CPU branches below match.
# -- claude & dmu May 2026
if(NOT CMAKE_SYSTEM_PROCESSOR AND CMAKE_OSX_ARCHITECTURES)
  list(GET CMAKE_OSX_ARCHITECTURES 0 CMAKE_SYSTEM_PROCESSOR)
endif()

if(SELF_FORCE_I386)

  set(platform_processor "i386")
  set(TARGET_ARCH       "I386_ARCH")
  set(HOST_ARCH         "I386_ARCH")

elseif(CMAKE_SYSTEM_PROCESSOR STREQUAL "x86_64" OR
   CMAKE_SYSTEM_PROCESSOR STREQUAL "AMD64" OR
   CMAKE_SYSTEM_PROCESSOR STREQUAL "amd64")

  set(platform_processor "amd64")
  set(TARGET_ARCH       "X86_64_ARCH")
  set(HOST_ARCH         "X86_64_ARCH")

elseif(CMAKE_SYSTEM_PROCESSOR MATCHES "^Intel" OR
       CMAKE_SYSTEM_PROCESSOR MATCHES "^i.86" OR
       CMAKE_SYSTEM_PROCESSOR MATCHES "^x86_")

  set(platform_processor "i386")
  set(TARGET_ARCH       "I386_ARCH")
  set(HOST_ARCH         "I386_ARCH")

elseif(CMAKE_SYSTEM_PROCESSOR MATCHES "^powerpc" OR
       CMAKE_SYSTEM_PROCESSOR MATCHES "^Power" OR
       CMAKE_SYSTEM_PROCESSOR MATCHES "^ppc")
    
  set(platform_processor "ppc")
  set(TARGET_ARCH       "PPC_ARCH")
  set(HOST_ARCH         "PPC_ARCH")

elseif(CMAKE_SYSTEM_PROCESSOR MATCHES "^sparc")

  set(platform_processor "sparc")
  set(TARGET_ARCH       "SPARC_ARCH")
  set(HOST_ARCH         "SPARC_ARCH")

elseif(CMAKE_SYSTEM_PROCESSOR MATCHES "^(aarch64|arm64)")

  set(platform_processor "aarch64")
  set(TARGET_ARCH       "AARCH64_ARCH")
  set(HOST_ARCH         "AARCH64_ARCH")

else()

  message(FATAL_ERROR "Processor type ${CMAKE_SYSTEM_PROCESSOR} not supported")
  
endif()


# OS detection
#
# Apple OS naming in CMAKE_SYSTEM_NAME is asymmetric: macOS is reported as
# the kernel name "Darwin" (what `uname -s` returns), while the embedded
# Apple platforms use product names (visionOS/xrOS, iOS, tvOS) supplied via
# -DCMAKE_SYSTEM_NAME=… on the cmake command line.  All four are Darwin
# under the hood.

if(CMAKE_SYSTEM_NAME MATCHES "Darwin")
  
  set(platform_kind "unix")
# implicit   
# set(TARGET_OS_FAMILY  "UNIX_FAMILY")
  
  set(platform_name "Mac OS X")
  set(platform "mac_osx")
  set(IS_MACOS TRUE)
# implicit
# set(TARGET_OS_VERSION "MACOSX_VERSION")

elseif(CMAKE_SYSTEM_NAME MATCHES "visionOS|xrOS|iOS|tvOS")
  # Apple non-macOS platforms (visionOS/xrOS/iOS/tvOS): route through
  # mac_osx.cmake but flag the bundle/AppKit bits off via IS_APPLE_EMBEDDED.
  # -- claude & dmu May 2026
  set(platform_kind "unix")
  set(platform_name "${CMAKE_SYSTEM_NAME}")
  set(platform "mac_osx")
  set(IS_APPLE_EMBEDDED TRUE)

elseif(CMAKE_SYSTEM_NAME MATCHES "Linux")
  
  set(platform_kind "unix")
  set(TARGET_OS_FAMILY  "UNIX_FAMILY")
  
  set(platform_name "Linux")
  set(platform "linux")
  set(TARGET_OS_VERSION "LINUX_VERSION")
  
elseif(CMAKE_SYSTEM_NAME MATCHES "NetBSD")

  set(platform_kind "unix")
  set(TARGET_OS_FAMILY  "UNIX_FAMILY")

  set(platform_name "NetBSD")
  set(platform "netbsd")
  set(TARGET_OS_VERSION "NETBSD_VERSION")

elseif(CMAKE_SYSTEM_NAME MATCHES "FreeBSD")

  set(platform_kind "unix")
  set(TARGET_OS_FAMILY  "UNIX_FAMILY")

  set(platform_name "FreeBSD")
  set(platform "freebsd")
  set(TARGET_OS_VERSION "FREEBSD_VERSION")

elseif(CMAKE_SYSTEM_NAME MATCHES "(Solaris|SunOS)")
  
  set(platform_kind "unix")
  set(TARGET_OS_FAMILY  "UNIX_FAMILY")
  
  set(platform_name "Solaris")  
  set(platform "svr4")
  set(TARGET_OS_VERSION "SOLARIS_VERSION")
  
else()
  
  message(FATAL_ERROR "OS type ${CMAKE_SYSTEM_NAME} not supported")
  
endif()

# Compiler detection

if(CMAKE_CXX_COMPILER_ID MATCHES ".*[Cc]lang.*")
  
  set(clang 1)
  set(COMPILER          "GCC_COMPILER")
  set(platform_compiler "gcc")

elseif(CMAKE_CXX_COMPILER_ID MATCHES ".*[Gg][Nn][Uu].*")

  set(gcc 1)
  set(COMPILER          "GCC_COMPILER")
  set(platform_compiler "gcc")

else()
  
  set(cc 1)
  set(COMPILER          "CC_COMPILER")
  # message(FATAL_ERROR "Compiler ${CMAKE_CXX_COMPILER} not supported")
  
endif()

set(DYNAMIC           "DYNLINK_SUPPORTED")
mark_as_advanced(DYNAMIC COMPILER TARGET_OS_VERSION TARGET_OS_FAMILY)


message(STATUS "Preparing for ${platform_name} on ${platform_processor}")



