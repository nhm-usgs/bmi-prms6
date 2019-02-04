#----------------------------------------------------------------
# Generated CMake target import file for configuration "DEBUG".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "prmslibbmi" for configuration "DEBUG"
set_property(TARGET prmslibbmi APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(prmslibbmi PROPERTIES
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libprmslibbmi.so"
  IMPORTED_SONAME_DEBUG "libprmslibbmi.so"
  )

list(APPEND _IMPORT_CHECK_TARGETS prmslibbmi )
list(APPEND _IMPORT_CHECK_FILES_FOR_prmslibbmi "${_IMPORT_PREFIX}/lib/libprmslibbmi.so" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
