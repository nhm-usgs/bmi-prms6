# The BMI spec is "baked in" to the bmi-prms shared object.
add_library(${bmiprms6_lib_s} SHARED m_prms.f90 bmi_prms.f90 bmi.f90)
add_library(${bmiprms6_lib} STATIC m_prms.f90 bmi_prms.f90 bmi.f90)
target_link_libraries(${bmiprms6_lib} ${EXTRA_LIBS})

add_executable(run_${bmiprms6_lib} main.f90)
target_link_libraries(run_${bmiprms6_lib} ${EXTRA_LIBS})

install(
  PROGRAMS ${CMAKE_CURRENT_BINARY_DIR}/run_${bmiprms6_lib}
  DESTINATION bin)
install(
  TARGETS ${bmiprms6_lib}
  DESTINATION lib)
install(
  FILES ${CMAKE_CURRENT_BINARY_DIR}/bmi.mod
        ${CMAKE_CURRENT_BINARY_DIR}/${bmiprms6_lib}.mod
  DESTINATION include)
