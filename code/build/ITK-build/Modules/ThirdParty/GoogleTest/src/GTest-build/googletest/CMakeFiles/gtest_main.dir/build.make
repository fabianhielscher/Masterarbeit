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
include Modules/ThirdParty/GoogleTest/src/GTest-build/googletest/CMakeFiles/gtest_main.dir/depend.make

# Include the progress variables for this target.
include Modules/ThirdParty/GoogleTest/src/GTest-build/googletest/CMakeFiles/gtest_main.dir/progress.make

# Include the compile flags for this target's objects.
include Modules/ThirdParty/GoogleTest/src/GTest-build/googletest/CMakeFiles/gtest_main.dir/flags.make

Modules/ThirdParty/GoogleTest/src/GTest-build/googletest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o: Modules/ThirdParty/GoogleTest/src/GTest-build/googletest/CMakeFiles/gtest_main.dir/flags.make
Modules/ThirdParty/GoogleTest/src/GTest-build/googletest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o: /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/GoogleTest/src/itkgoogletest/googletest/src/gtest_main.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object Modules/ThirdParty/GoogleTest/src/GTest-build/googletest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o"
	cd /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build/Modules/ThirdParty/GoogleTest/src/GTest-build/googletest && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/gtest_main.dir/src/gtest_main.cc.o -c /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/GoogleTest/src/itkgoogletest/googletest/src/gtest_main.cc

Modules/ThirdParty/GoogleTest/src/GTest-build/googletest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gtest_main.dir/src/gtest_main.cc.i"
	cd /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build/Modules/ThirdParty/GoogleTest/src/GTest-build/googletest && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/GoogleTest/src/itkgoogletest/googletest/src/gtest_main.cc > CMakeFiles/gtest_main.dir/src/gtest_main.cc.i

Modules/ThirdParty/GoogleTest/src/GTest-build/googletest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gtest_main.dir/src/gtest_main.cc.s"
	cd /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build/Modules/ThirdParty/GoogleTest/src/GTest-build/googletest && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/GoogleTest/src/itkgoogletest/googletest/src/gtest_main.cc -o CMakeFiles/gtest_main.dir/src/gtest_main.cc.s

# Object files for target gtest_main
gtest_main_OBJECTS = \
"CMakeFiles/gtest_main.dir/src/gtest_main.cc.o"

# External object files for target gtest_main
gtest_main_EXTERNAL_OBJECTS =

lib/libitkgtest_main-4.13.a: Modules/ThirdParty/GoogleTest/src/GTest-build/googletest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o
lib/libitkgtest_main-4.13.a: Modules/ThirdParty/GoogleTest/src/GTest-build/googletest/CMakeFiles/gtest_main.dir/build.make
lib/libitkgtest_main-4.13.a: Modules/ThirdParty/GoogleTest/src/GTest-build/googletest/CMakeFiles/gtest_main.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library ../../../../../../lib/libitkgtest_main-4.13.a"
	cd /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build/Modules/ThirdParty/GoogleTest/src/GTest-build/googletest && $(CMAKE_COMMAND) -P CMakeFiles/gtest_main.dir/cmake_clean_target.cmake
	cd /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build/Modules/ThirdParty/GoogleTest/src/GTest-build/googletest && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/gtest_main.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Modules/ThirdParty/GoogleTest/src/GTest-build/googletest/CMakeFiles/gtest_main.dir/build: lib/libitkgtest_main-4.13.a

.PHONY : Modules/ThirdParty/GoogleTest/src/GTest-build/googletest/CMakeFiles/gtest_main.dir/build

Modules/ThirdParty/GoogleTest/src/GTest-build/googletest/CMakeFiles/gtest_main.dir/clean:
	cd /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build/Modules/ThirdParty/GoogleTest/src/GTest-build/googletest && $(CMAKE_COMMAND) -P CMakeFiles/gtest_main.dir/cmake_clean.cmake
.PHONY : Modules/ThirdParty/GoogleTest/src/GTest-build/googletest/CMakeFiles/gtest_main.dir/clean

Modules/ThirdParty/GoogleTest/src/GTest-build/googletest/CMakeFiles/gtest_main.dir/depend:
	cd /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK/Modules/ThirdParty/GoogleTest/src/itkgoogletest/googletest /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build/Modules/ThirdParty/GoogleTest/src/GTest-build/googletest /Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-build/Modules/ThirdParty/GoogleTest/src/GTest-build/googletest/CMakeFiles/gtest_main.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Modules/ThirdParty/GoogleTest/src/GTest-build/googletest/CMakeFiles/gtest_main.dir/depend

