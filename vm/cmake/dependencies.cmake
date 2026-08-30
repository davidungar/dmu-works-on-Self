#!/usr/bin/env cmake

set(3RD_PARTY_LIBS)

#
# this is neccessary for finding X etc.
#
enable_language(C)

find_package(PkgConfig QUIET)

#
#
# X11.
#
if(SELF_X11)
    if(PKG_CONFIG_FOUND)
      # do it the pkg-config way
      if(SELF_XFT)		# XXX: uwe: this is a bit ugly
	pkg_check_modules(X11 QUIET x11 xext xft fontconfig)
      else()
	pkg_check_modules(X11 QUIET x11 xext)
      endif()
    endif()

    if(NOT PKG_CONFIG_FOUND OR (NOT X11_FOUND))
      if(APPLE)
        find_package(X11 COMPONENTS Xext QUIET)
      else()
        find_package(X11 COMPONENTS Xext REQUIRED)
      endif()
      if(NOT X11_FOUND)
        if(APPLE)
          message(STATUS "X11 not found; building without X11 (Quartz only).")
          set(SELF_X11 OFF CACHE BOOL
            "Select whether to build Self with X11 Platform windows" FORCE)
          list(REMOVE_ITEM _defines XLIB)
          list(REMOVE_ITEM _defines USE_XFT)
          get_directory_property(_cd COMPILE_DEFINITIONS)
          if(_cd)
            list(REMOVE_ITEM _cd XLIB)
            list(REMOVE_ITEM _cd USE_XFT)
            set_property(DIRECTORY PROPERTY COMPILE_DEFINITIONS "${_cd}")
          endif()
        else()
          message(FATAL_ERROR "Cannot find X11."
            "  Ensure the library and header files are properly installed")
        endif()
      else()
        if(NOT X11_Xext_FOUND)
          if(APPLE)
            message(STATUS "Xext not found; building without X11 (Quartz only).")
            set(SELF_X11 OFF CACHE BOOL
              "Select whether to build Self with X11 Platform windows" FORCE)
            list(REMOVE_ITEM _defines XLIB)
            get_directory_property(_cd COMPILE_DEFINITIONS)
            if(_cd)
              list(REMOVE_ITEM _cd XLIB)
              set_property(DIRECTORY PROPERTY COMPILE_DEFINITIONS "${_cd}")
            endif()
          else()
            message(FATAL_ERROR "Cannot find Xext component of X11."
              "  Ensure the library and header files are properly installed")
          endif()
        endif()

        if(SELF_X11 AND SELF_XFT)
	find_package(X11 COMPONENTS Xft REQUIRED)
	if(NOT X11_Xft_FOUND)
          message(FATAL_ERROR "Cannot find Xft component of X11."
            "  Ensure the library and header files are properly installed")
	endif()

	include(FindFontconfig)
	if (NOT Fontconfig_FOUND)
          message(FATAL_ERROR "Cannot find fontconfig."
            "  Ensure the library and header files are properly installed")
	endif()
        endif()

        set(X11_INCLUDE_DIRS ${X11_INCLUDE_DIR})
      endif()
    endif()
    if(SELF_X11)
    link_directories(${X11_LIBRARY_DIRS})
    include_directories(${X11_INCLUDE_DIRS})
    if(APPLE)
      # Weak-link so Self.app launches when XQuartz is not installed.
      # -- grok 08/29/26
      set(_x11_weak)
      foreach(_lib ${X11_LIBRARIES} ${Fontconfig_LIBRARIES})
        if(_lib)
          if(EXISTS "${_lib}")
            list(APPEND _x11_weak "-Wl,-weak_library,${_lib}")
          else()
            string(REGEX REPLACE "^-l" "" _lname "${_lib}")
            set(_flib "")
            foreach(_dir ${X11_LIBRARY_DIRS} /opt/X11/lib)
              if(NOT _flib)
                if(EXISTS "${_dir}/lib${_lname}.dylib")
                  set(_flib "${_dir}/lib${_lname}.dylib")
                elseif(EXISTS "${_dir}/lib${_lname}.6.dylib")
                  set(_flib "${_dir}/lib${_lname}.6.dylib")
                endif()
              endif()
            endforeach()
            if(_flib)
              list(APPEND _x11_weak "-Wl,-weak_library,${_flib}")
            else()
              list(APPEND _x11_weak "-Wl,-weak-l${_lname}")
            endif()
          endif()
        endif()
      endforeach()
      foreach(_extra SM ICE)
        find_library(_extra_lib ${_extra} PATHS /opt/X11/lib NO_DEFAULT_PATH)
        if(_extra_lib)
          list(APPEND _x11_weak "-Wl,-weak_library,${_extra_lib}")
        endif()
        unset(_extra_lib CACHE)
      endforeach()
      list(APPEND 3RD_PARTY_LIBS ${_x11_weak})
    else()
      list(APPEND 3RD_PARTY_LIBS ${X11_LIBRARIES} ${Fontconfig_LIBRARIES})
    endif()
    endif()
endif()

if(PKG_CONFIG_FOUND)
  # do it the pkg-config way
  pkg_check_modules(CURSES QUIET ncurses)
endif()

if(NOT PKG_CONFIG_FOUND OR (NOT CURSES_FOUND))
  # do it the CMake way
  # (n)curses
  find_package(Curses REQUIRED)
  #
  # hide things that CURSES forgot to hide
  mark_as_advanced(CURSES_CURSES_H_PATH CURSES_FORM_LIBRARY CURSES_HAVE_CURSES_H)
  set(CURSES_INCLUDE_DIRS ${CURSES_INCLUDE_DIR})
endif()
link_directories(${CURSES_LIBRARY_DIRS})
include_directories(${CURSES_INCLUDE_DIRS})
list(APPEND 3RD_PARTY_LIBS ${CURSES_LIBRARIES})

# if this system has a libdl, we probably need it (eg, linux)
if(CMAKE_DL_LIBS)
  list(APPEND 3RD_PARTY_LIBS ${CMAKE_DL_LIBS})
endif()
