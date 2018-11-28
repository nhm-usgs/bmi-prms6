## Create the PRMS program
project(prmsbmiapp LANGUAGES Fortran)

add_executable(${PROJECT_NAME} Main_prms_BMI.f90)
target_link_libraries(${PROJECT_NAME} PRIVATE prmslib)

#####################################
# Tell how to install this executable
#####################################
install(TARGETS ${PROJECT_NAME} RUNTIME DESTINATION bin)


