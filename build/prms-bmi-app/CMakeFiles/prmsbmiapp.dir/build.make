# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.12

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/rmcd/git2/prms6-bmi/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/rmcd/git2/prms6-bmi/build

# Include any dependencies generated for this target.
include prms-bmi-app/CMakeFiles/prmsbmiapp.dir/depend.make

# Include the progress variables for this target.
include prms-bmi-app/CMakeFiles/prmsbmiapp.dir/progress.make

# Include the compile flags for this target's objects.
include prms-bmi-app/CMakeFiles/prmsbmiapp.dir/flags.make

prms-bmi-app/CMakeFiles/prmsbmiapp.dir/Main_prms_BMI.f90.o: prms-bmi-app/CMakeFiles/prmsbmiapp.dir/flags.make
prms-bmi-app/CMakeFiles/prmsbmiapp.dir/Main_prms_BMI.f90.o: /home/rmcd/git2/prms6-bmi/src/prms-bmi-app/Main_prms_BMI.f90
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rmcd/git2/prms6-bmi/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building Fortran object prms-bmi-app/CMakeFiles/prmsbmiapp.dir/Main_prms_BMI.f90.o"
	cd /home/rmcd/git2/prms6-bmi/build/prms-bmi-app && /opt/rh/devtoolset-7/root/usr/bin/gfortran $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -c /home/rmcd/git2/prms6-bmi/src/prms-bmi-app/Main_prms_BMI.f90 -o CMakeFiles/prmsbmiapp.dir/Main_prms_BMI.f90.o

prms-bmi-app/CMakeFiles/prmsbmiapp.dir/Main_prms_BMI.f90.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing Fortran source to CMakeFiles/prmsbmiapp.dir/Main_prms_BMI.f90.i"
	cd /home/rmcd/git2/prms6-bmi/build/prms-bmi-app && /opt/rh/devtoolset-7/root/usr/bin/gfortran $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -E /home/rmcd/git2/prms6-bmi/src/prms-bmi-app/Main_prms_BMI.f90 > CMakeFiles/prmsbmiapp.dir/Main_prms_BMI.f90.i

prms-bmi-app/CMakeFiles/prmsbmiapp.dir/Main_prms_BMI.f90.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling Fortran source to assembly CMakeFiles/prmsbmiapp.dir/Main_prms_BMI.f90.s"
	cd /home/rmcd/git2/prms6-bmi/build/prms-bmi-app && /opt/rh/devtoolset-7/root/usr/bin/gfortran $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -S /home/rmcd/git2/prms6-bmi/src/prms-bmi-app/Main_prms_BMI.f90 -o CMakeFiles/prmsbmiapp.dir/Main_prms_BMI.f90.s

# Object files for target prmsbmiapp
prmsbmiapp_OBJECTS = \
"CMakeFiles/prmsbmiapp.dir/Main_prms_BMI.f90.o"

# External object files for target prmsbmiapp
prmsbmiapp_EXTERNAL_OBJECTS =

prms-bmi-app/prmsbmiapp: prms-bmi-app/CMakeFiles/prmsbmiapp.dir/Main_prms_BMI.f90.o
prms-bmi-app/prmsbmiapp: prms-bmi-app/CMakeFiles/prmsbmiapp.dir/build.make
prms-bmi-app/prmsbmiapp: prms-bmi/libprmslibbmi.so
prms-bmi-app/prmsbmiapp: /usr/local/lib/libcoretran.so
prms-bmi-app/prmsbmiapp: /usr/local/lib/libnetcdff.so
prms-bmi-app/prmsbmiapp: prms-bmi-app/CMakeFiles/prmsbmiapp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/rmcd/git2/prms6-bmi/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking Fortran executable prmsbmiapp"
	cd /home/rmcd/git2/prms6-bmi/build/prms-bmi-app && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/prmsbmiapp.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
prms-bmi-app/CMakeFiles/prmsbmiapp.dir/build: prms-bmi-app/prmsbmiapp

.PHONY : prms-bmi-app/CMakeFiles/prmsbmiapp.dir/build

prms-bmi-app/CMakeFiles/prmsbmiapp.dir/clean:
	cd /home/rmcd/git2/prms6-bmi/build/prms-bmi-app && $(CMAKE_COMMAND) -P CMakeFiles/prmsbmiapp.dir/cmake_clean.cmake
.PHONY : prms-bmi-app/CMakeFiles/prmsbmiapp.dir/clean

prms-bmi-app/CMakeFiles/prmsbmiapp.dir/depend:
	cd /home/rmcd/git2/prms6-bmi/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/rmcd/git2/prms6-bmi/src /home/rmcd/git2/prms6-bmi/src/prms-bmi-app /home/rmcd/git2/prms6-bmi/build /home/rmcd/git2/prms6-bmi/build/prms-bmi-app /home/rmcd/git2/prms6-bmi/build/prms-bmi-app/CMakeFiles/prmsbmiapp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : prms-bmi-app/CMakeFiles/prmsbmiapp.dir/depend

