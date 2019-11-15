cmake_minimum_required(VERSION 2.8)

project(bmi-prms6 Fortran)

#bmiprms is the bmiprms module used in main
set(bmiprms6_lib bmiprms)

# Locate the installed prmsf library (via CMAKE_PREFIX_PATH).
find_library(prms6_lib libprmslib.so )
find_library(coretran_lib libcoretran.so)
find_library(netcdf_lib libnetcdf.so)
find_library(netcdff_lib libnetcdff.so)
set(EXTRA_LIBS
  ${prms6_lib}
  ${coretran_lib}
  ${netcdf_lib}
  ${netcdff_lib})
# Locate the installed prms module (via CMAKE_PREFIX_PATH).
find_path(prmslibmod utils_prms.mod)
include_directories(${prmslibmod})
find_path(coretranlibmod variablekind.mod)
include_directories(${coretranlibmod})
find_path(netcdflibmod netcdf.mod)
include_directories(${netcdflibmod})
find_path(netcdfflibmod netcdf_nf_data.mod)
include_directories(${netcdfflibmod})

add_subdirectory(src)
