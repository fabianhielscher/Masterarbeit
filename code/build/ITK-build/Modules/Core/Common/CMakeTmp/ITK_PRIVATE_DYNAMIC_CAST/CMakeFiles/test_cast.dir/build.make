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
CMAKE_SOURCE_DIR = /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build/Modules/Core/Common/CMakeTmp/ITK_PRIVATE_DYNAMIC_CAST

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build/Modules/Core/Common/CMakeTmp/ITK_PRIVATE_DYNAMIC_CAST

# Include any dependencies generated for this target.
include CMakeFiles/test_cast.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/test_cast.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/test_cast.dir/flags.make

CMakeFiles/test_cast.dir/main.cxx.o: CMakeFiles/test_cast.dir/flags.make
CMakeFiles/test_cast.dir/main.cxx.o: main.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --progress-dir=/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build/Modules/Core/Common/CMakeTmp/ITK_PRIVATE_DYNAMIC_CAST/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/test_cast.dir/main.cxx.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test_cast.dir/main.cxx.o -c /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build/Modules/Core/Common/CMakeTmp/ITK_PRIVATE_DYNAMIC_CAST/main.cxx

CMakeFiles/test_cast.dir/main.cxx.i: cmake_force
	@echo "Preprocessing CXX source to CMakeFiles/test_cast.dir/main.cxx.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build/Modules/Core/Common/CMakeTmp/ITK_PRIVATE_DYNAMIC_CAST/main.cxx > CMakeFiles/test_cast.dir/main.cxx.i

CMakeFiles/test_cast.dir/main.cxx.s: cmake_force
	@echo "Compiling CXX source to assembly CMakeFiles/test_cast.dir/main.cxx.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build/Modules/Core/Common/CMakeTmp/ITK_PRIVATE_DYNAMIC_CAST/main.cxx -o CMakeFiles/test_cast.dir/main.cxx.s

# Object files for target test_cast
test_cast_OBJECTS = \
"CMakeFiles/test_cast.dir/main.cxx.o"

# External object files for target test_cast
test_cast_EXTERNAL_OBJECTS =

test_cast: CMakeFiles/test_cast.dir/main.cxx.o
test_cast: CMakeFiles/test_cast.dir/build.make
test_cast: libbase.dylib
test_cast: CMakeFiles/test_cast.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --progress-dir=/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build/Modules/Core/Common/CMakeTmp/ITK_PRIVATE_DYNAMIC_CAST/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable test_cast"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_cast.dir/link.txt --verbose=$(VERBOSE)
	./test_cast

# Rule to build all files generated by this target.
CMakeFiles/test_cast.dir/build: test_cast

.PHONY : CMakeFiles/test_cast.dir/build

CMakeFiles/test_cast.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/test_cast.dir/cmake_clean.cmake
.PHONY : CMakeFiles/test_cast.dir/clean

CMakeFiles/test_cast.dir/depend:
	cd /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build/Modules/Core/Common/CMakeTmp/ITK_PRIVATE_DYNAMIC_CAST && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build/Modules/Core/Common/CMakeTmp/ITK_PRIVATE_DYNAMIC_CAST /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build/Modules/Core/Common/CMakeTmp/ITK_PRIVATE_DYNAMIC_CAST /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build/Modules/Core/Common/CMakeTmp/ITK_PRIVATE_DYNAMIC_CAST /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build/Modules/Core/Common/CMakeTmp/ITK_PRIVATE_DYNAMIC_CAST /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build/Modules/Core/Common/CMakeTmp/ITK_PRIVATE_DYNAMIC_CAST/CMakeFiles/test_cast.dir/DependInfo.cmake
.PHONY : CMakeFiles/test_cast.dir/depend
