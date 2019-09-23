# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.14

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
CMAKE_COMMAND = /Library/Frameworks/Python.framework/Versions/3.7/lib/python3.7/site-packages/cmake/data/CMake.app/Contents/bin/cmake

# The command to remove a file.
RM = /Library/Frameworks/Python.framework/Versions/3.7/lib/python3.7/site-packages/cmake/data/CMake.app/Contents/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build

# Include any dependencies generated for this target.
include Modules/ThirdParty/NIFTI/src/nifti/znzlib/CMakeFiles/ITKznz.dir/depend.make

# Include the progress variables for this target.
include Modules/ThirdParty/NIFTI/src/nifti/znzlib/CMakeFiles/ITKznz.dir/progress.make

# Include the compile flags for this target's objects.
include Modules/ThirdParty/NIFTI/src/nifti/znzlib/CMakeFiles/ITKznz.dir/flags.make

Modules/ThirdParty/NIFTI/src/nifti/znzlib/CMakeFiles/ITKznz.dir/znzlib.c.o: Modules/ThirdParty/NIFTI/src/nifti/znzlib/CMakeFiles/ITKznz.dir/flags.make
Modules/ThirdParty/NIFTI/src/nifti/znzlib/CMakeFiles/ITKznz.dir/znzlib.c.o: /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/NIFTI/src/nifti/znzlib/znzlib.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object Modules/ThirdParty/NIFTI/src/nifti/znzlib/CMakeFiles/ITKznz.dir/znzlib.c.o"
	cd /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build/Modules/ThirdParty/NIFTI/src/nifti/znzlib && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ITKznz.dir/znzlib.c.o   -c /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/NIFTI/src/nifti/znzlib/znzlib.c

Modules/ThirdParty/NIFTI/src/nifti/znzlib/CMakeFiles/ITKznz.dir/znzlib.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ITKznz.dir/znzlib.c.i"
	cd /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build/Modules/ThirdParty/NIFTI/src/nifti/znzlib && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/NIFTI/src/nifti/znzlib/znzlib.c > CMakeFiles/ITKznz.dir/znzlib.c.i

Modules/ThirdParty/NIFTI/src/nifti/znzlib/CMakeFiles/ITKznz.dir/znzlib.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ITKznz.dir/znzlib.c.s"
	cd /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build/Modules/ThirdParty/NIFTI/src/nifti/znzlib && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/NIFTI/src/nifti/znzlib/znzlib.c -o CMakeFiles/ITKznz.dir/znzlib.c.s

# Object files for target ITKznz
ITKznz_OBJECTS = \
"CMakeFiles/ITKznz.dir/znzlib.c.o"

# External object files for target ITKznz
ITKznz_EXTERNAL_OBJECTS =

lib/libITKznz-4.13.a: Modules/ThirdParty/NIFTI/src/nifti/znzlib/CMakeFiles/ITKznz.dir/znzlib.c.o
lib/libITKznz-4.13.a: Modules/ThirdParty/NIFTI/src/nifti/znzlib/CMakeFiles/ITKznz.dir/build.make
lib/libITKznz-4.13.a: Modules/ThirdParty/NIFTI/src/nifti/znzlib/CMakeFiles/ITKznz.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library ../../../../../../lib/libITKznz-4.13.a"
	cd /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build/Modules/ThirdParty/NIFTI/src/nifti/znzlib && $(CMAKE_COMMAND) -P CMakeFiles/ITKznz.dir/cmake_clean_target.cmake
	cd /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build/Modules/ThirdParty/NIFTI/src/nifti/znzlib && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ITKznz.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Modules/ThirdParty/NIFTI/src/nifti/znzlib/CMakeFiles/ITKznz.dir/build: lib/libITKznz-4.13.a

.PHONY : Modules/ThirdParty/NIFTI/src/nifti/znzlib/CMakeFiles/ITKznz.dir/build

Modules/ThirdParty/NIFTI/src/nifti/znzlib/CMakeFiles/ITKznz.dir/clean:
	cd /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build/Modules/ThirdParty/NIFTI/src/nifti/znzlib && $(CMAKE_COMMAND) -P CMakeFiles/ITKznz.dir/cmake_clean.cmake
.PHONY : Modules/ThirdParty/NIFTI/src/nifti/znzlib/CMakeFiles/ITKznz.dir/clean

Modules/ThirdParty/NIFTI/src/nifti/znzlib/CMakeFiles/ITKznz.dir/depend:
	cd /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/NIFTI/src/nifti/znzlib /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build/Modules/ThirdParty/NIFTI/src/nifti/znzlib /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build/Modules/ThirdParty/NIFTI/src/nifti/znzlib/CMakeFiles/ITKznz.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Modules/ThirdParty/NIFTI/src/nifti/znzlib/CMakeFiles/ITKznz.dir/depend

