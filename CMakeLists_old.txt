cmake_minimum_required(VERSION 2.8)

project(bmi-prms6 Fortran)

set(bmiprms6_lib bmiprms6)

# Locate the installed diffusionf library (via CMAKE_PREFIX_PATH).
find_library(prms6_lib prmslib)
find_library(coretran_lib coretran)
find_library(netcdf_lib netcdf)
find_library(netcdff_lib netcdff)
set(EXTRA_LIBS
  ${prms6_lib}
  ${coretran_lib}
  ${netcdf_lib}
  ${netcdff_lib})
# Locate the installed diffusion module (via CMAKE_PREFIX_PATH).
find_path(prmslibmod utils_prms.mod)
include_directories(${prmslibmod})

add_subdirectory(src)
