#!/usr/bin/env cmake
#
# out:
#    $SRC_VMDATE
#
# in:
#   $SELF_BUILD_SUPPORT_DIR
#   $LOCAL_CMAKE_DIR
#   ($CMAKE_BINARY_DIR)

set(SRC_VMDATE ${SELF_GENERATED_INLCUDE_FILES_DIR}/vmDate.cpp)
set(SRC_VMDATE_IN ${SELF_BUILD_SUPPORT_DIR}/vmDate.cpp.in)

# Xcode (esp. visionOS cross-compile via ExternalProject makeDeps_host) pre-flight-checks
# input files before custom targets run, so ensure vmDate.cpp exists at configure time.
# create_vmDate_${PROJECT_NAME} overwrites it on every build.  -- claude & dmu May 2026
if(IS_APPLE_EMBEDDED AND NOT EXISTS ${SRC_VMDATE})
  file(MAKE_DIRECTORY ${SELF_GENERATED_INLCUDE_FILES_DIR})
  file(WRITE ${SRC_VMDATE} "// placeholder -- overwritten by create_vmDate_${PROJECT_NAME}\n")
endif()
configure_file(
  "${LOCAL_CMAKE_DIR}/configureVmDate.cmake.in"
  "${CMAKE_CURRENT_BINARY_DIR}/configureVmDate.cmake" @ONLY
) 

add_custom_target(create_vmDate_${PROJECT_NAME}
    COMMAND "${CMAKE_COMMAND}" -P "${CMAKE_CURRENT_BINARY_DIR}/configureVmDate.cmake" 
    DEPENDS ${SRC}
    COMMENT "Creating ${SRC_VMDATE}"
) 
set_target_properties(create_vmDate_${PROJECT_NAME} PROPERTIES FOLDER "${SELF_HELPER_FOLDER}")

set_source_files_properties(${SRC_VMDATE} 
  PROPERTIES 
  GENERATED TRUE
  OBJECT_DEPENDS "${SRC}"
)
