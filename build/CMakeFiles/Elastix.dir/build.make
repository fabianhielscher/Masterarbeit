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
CMAKE_SOURCE_DIR = /Users/fabianhielscher/Dev/Masterarbeit/code/SimpleElastix/SuperBuild

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/fabianhielscher/Dev/Masterarbeit/code/build

# Utility rule file for Elastix.

# Include the progress variables for this target.
include CMakeFiles/Elastix.dir/progress.make

CMakeFiles/Elastix: CMakeFiles/Elastix-complete


CMakeFiles/Elastix-complete: Elastix-prefix/src/Elastix-stamp/Elastix-install
CMakeFiles/Elastix-complete: Elastix-prefix/src/Elastix-stamp/Elastix-mkdir
CMakeFiles/Elastix-complete: Elastix-prefix/src/Elastix-stamp/Elastix-download
CMakeFiles/Elastix-complete: Elastix-prefix/src/Elastix-stamp/Elastix-update
CMakeFiles/Elastix-complete: Elastix-prefix/src/Elastix-stamp/Elastix-patch
CMakeFiles/Elastix-complete: Elastix-prefix/src/Elastix-stamp/Elastix-configure
CMakeFiles/Elastix-complete: Elastix-prefix/src/Elastix-stamp/Elastix-build
CMakeFiles/Elastix-complete: Elastix-prefix/src/Elastix-stamp/Elastix-install
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/fabianhielscher/Dev/Masterarbeit/code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Completed 'Elastix'"
	/Library/Frameworks/Python.framework/Versions/3.7/lib/python3.7/site-packages/cmake/data/CMake.app/Contents/bin/cmake -E make_directory /Users/fabianhielscher/Dev/Masterarbeit/code/build/CMakeFiles
	/Library/Frameworks/Python.framework/Versions/3.7/lib/python3.7/site-packages/cmake/data/CMake.app/Contents/bin/cmake -E touch /Users/fabianhielscher/Dev/Masterarbeit/code/build/CMakeFiles/Elastix-complete
	/Library/Frameworks/Python.framework/Versions/3.7/lib/python3.7/site-packages/cmake/data/CMake.app/Contents/bin/cmake -E touch /Users/fabianhielscher/Dev/Masterarbeit/code/build/Elastix-prefix/src/Elastix-stamp/Elastix-done

Elastix-prefix/src/Elastix-stamp/Elastix-install: Elastix-prefix/src/Elastix-stamp/Elastix-build
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/fabianhielscher/Dev/Masterarbeit/code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Performing install step for 'Elastix'"
	cd /Users/fabianhielscher/Dev/Masterarbeit/code/build/Elastix-build && $(MAKE) install
	cd /Users/fabianhielscher/Dev/Masterarbeit/code/build/Elastix-build && /Library/Frameworks/Python.framework/Versions/3.7/lib/python3.7/site-packages/cmake/data/CMake.app/Contents/bin/cmake -E touch /Users/fabianhielscher/Dev/Masterarbeit/code/build/Elastix-prefix/src/Elastix-stamp/Elastix-install

Elastix-prefix/src/Elastix-stamp/Elastix-mkdir:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/fabianhielscher/Dev/Masterarbeit/code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Creating directories for 'Elastix'"
	/Library/Frameworks/Python.framework/Versions/3.7/lib/python3.7/site-packages/cmake/data/CMake.app/Contents/bin/cmake -E make_directory /Users/fabianhielscher/Dev/Masterarbeit/code/build/Elastix
	/Library/Frameworks/Python.framework/Versions/3.7/lib/python3.7/site-packages/cmake/data/CMake.app/Contents/bin/cmake -E make_directory /Users/fabianhielscher/Dev/Masterarbeit/code/build/Elastix-build
	/Library/Frameworks/Python.framework/Versions/3.7/lib/python3.7/site-packages/cmake/data/CMake.app/Contents/bin/cmake -E make_directory /Users/fabianhielscher/Dev/Masterarbeit/code/build/Elastix-prefix
	/Library/Frameworks/Python.framework/Versions/3.7/lib/python3.7/site-packages/cmake/data/CMake.app/Contents/bin/cmake -E make_directory /Users/fabianhielscher/Dev/Masterarbeit/code/build/Elastix-prefix/tmp
	/Library/Frameworks/Python.framework/Versions/3.7/lib/python3.7/site-packages/cmake/data/CMake.app/Contents/bin/cmake -E make_directory /Users/fabianhielscher/Dev/Masterarbeit/code/build/Elastix-prefix/src/Elastix-stamp
	/Library/Frameworks/Python.framework/Versions/3.7/lib/python3.7/site-packages/cmake/data/CMake.app/Contents/bin/cmake -E make_directory /Users/fabianhielscher/Dev/Masterarbeit/code/build/Elastix-prefix/src
	/Library/Frameworks/Python.framework/Versions/3.7/lib/python3.7/site-packages/cmake/data/CMake.app/Contents/bin/cmake -E make_directory /Users/fabianhielscher/Dev/Masterarbeit/code/build/Elastix-prefix/src/Elastix-stamp
	/Library/Frameworks/Python.framework/Versions/3.7/lib/python3.7/site-packages/cmake/data/CMake.app/Contents/bin/cmake -E touch /Users/fabianhielscher/Dev/Masterarbeit/code/build/Elastix-prefix/src/Elastix-stamp/Elastix-mkdir

Elastix-prefix/src/Elastix-stamp/Elastix-download: Elastix-prefix/src/Elastix-stamp/Elastix-gitinfo.txt
Elastix-prefix/src/Elastix-stamp/Elastix-download: Elastix-prefix/src/Elastix-stamp/Elastix-mkdir
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/fabianhielscher/Dev/Masterarbeit/code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Performing download step (git clone) for 'Elastix'"
	/Library/Frameworks/Python.framework/Versions/3.7/lib/python3.7/site-packages/cmake/data/CMake.app/Contents/bin/cmake -P /Users/fabianhielscher/Dev/Masterarbeit/code/build/Elastix-prefix/tmp/Elastix-gitclone.cmake
	/Library/Frameworks/Python.framework/Versions/3.7/lib/python3.7/site-packages/cmake/data/CMake.app/Contents/bin/cmake -E touch /Users/fabianhielscher/Dev/Masterarbeit/code/build/Elastix-prefix/src/Elastix-stamp/Elastix-download

Elastix-prefix/src/Elastix-stamp/Elastix-update: Elastix-prefix/src/Elastix-stamp/Elastix-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/fabianhielscher/Dev/Masterarbeit/code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "No update step for 'Elastix'"
	cd /Users/fabianhielscher/Dev/Masterarbeit/code/build/Elastix && /Library/Frameworks/Python.framework/Versions/3.7/lib/python3.7/site-packages/cmake/data/CMake.app/Contents/bin/cmake -E echo_append
	cd /Users/fabianhielscher/Dev/Masterarbeit/code/build/Elastix && /Library/Frameworks/Python.framework/Versions/3.7/lib/python3.7/site-packages/cmake/data/CMake.app/Contents/bin/cmake -E touch /Users/fabianhielscher/Dev/Masterarbeit/code/build/Elastix-prefix/src/Elastix-stamp/Elastix-update

Elastix-prefix/src/Elastix-stamp/Elastix-patch: Elastix-prefix/src/Elastix-stamp/Elastix-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/fabianhielscher/Dev/Masterarbeit/code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "No patch step for 'Elastix'"
	/Library/Frameworks/Python.framework/Versions/3.7/lib/python3.7/site-packages/cmake/data/CMake.app/Contents/bin/cmake -E echo_append
	/Library/Frameworks/Python.framework/Versions/3.7/lib/python3.7/site-packages/cmake/data/CMake.app/Contents/bin/cmake -E touch /Users/fabianhielscher/Dev/Masterarbeit/code/build/Elastix-prefix/src/Elastix-stamp/Elastix-patch

Elastix-prefix/src/Elastix-stamp/Elastix-configure: Lua-prefix/src/Lua-stamp/Lua-done
Elastix-prefix/src/Elastix-stamp/Elastix-configure: Swig-prefix/src/Swig-stamp/Swig-done
Elastix-prefix/src/Elastix-stamp/Elastix-configure: GTest-prefix/src/GTest-stamp/GTest-done
Elastix-prefix/src/Elastix-stamp/Elastix-configure: ITK-prefix/src/ITK-stamp/ITK-done
Elastix-prefix/src/Elastix-stamp/Elastix-configure: Elastix-prefix/tmp/Elastix-cfgcmd.txt
Elastix-prefix/src/Elastix-stamp/Elastix-configure: Elastix-prefix/src/Elastix-stamp/Elastix-update
Elastix-prefix/src/Elastix-stamp/Elastix-configure: Elastix-prefix/src/Elastix-stamp/Elastix-patch
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/fabianhielscher/Dev/Masterarbeit/code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Performing configure step for 'Elastix'"
	cd /Users/fabianhielscher/Dev/Masterarbeit/code/build/Elastix-build && /Library/Frameworks/Python.framework/Versions/3.7/lib/python3.7/site-packages/cmake/data/CMake.app/Contents/bin/cmake -DCMAKE_TOOLCHAIN_FILE:FILEPATH= --no-warn-unused-cli -C /Users/fabianhielscher/Dev/Masterarbeit/code/build/Elastix-build/CMakeCacheInit.txt -DCMAKE_BUILD_TYPE::STRING=Release -DCMAKE_MAKE_PROGRAM::FILEPATH=/usr/bin/make -DCMAKE_C_COMPILER::FILEPATH=/Library/Developer/CommandLineTools/usr/bin/cc -DCMAKE_C_FLAGS_DEBUG::STRING=-g "-DCMAKE_C_FLAGS_MINSIZEREL::STRING=-Os -DNDEBUG" "-DCMAKE_C_FLAGS_RELEASE::STRING=-O3 -DNDEBUG" "-DCMAKE_C_FLAGS_RELWITHDEBINFO::STRING=-O2 -g -DNDEBUG" -DCMAKE_CXX_COMPILER::FILEPATH=/Library/Developer/CommandLineTools/usr/bin/c++ "-DCMAKE_CXX_FLAGS::STRING= -std=c++11" -DCMAKE_CXX_FLAGS_DEBUG::STRING=-g "-DCMAKE_CXX_FLAGS_MINSIZEREL::STRING=-Os -DNDEBUG" "-DCMAKE_CXX_FLAGS_RELEASE::STRING=-O3 -DNDEBUG" "-DCMAKE_CXX_FLAGS_RELWITHDEBINFO::STRING=-O2 -g -DNDEBUG" -DCMAKE_LINKER::FILEPATH=/Library/Developer/CommandLineTools/usr/bin/ld -DCMAKE_STRIP::FILEPATH=/Library/Developer/CommandLineTools/usr/bin/strip "-DCMAKE_SYSTEM_PREFIX_PATH::UNINITIALIZED=/usr/local;/usr;/;/Library/Frameworks/Python.framework/Versions/3.7/lib/python3.7/site-packages/cmake/data/CMake.app/Contents;/Users/fabianhielscher/Dev/Masterarbeit/code/build;/usr/X11R6;/usr/pkg;/opt;/Library/Developer/CommandLineTools/SDKs/MacOSX10.14.sdk/usr;/sw;/opt/local" -DCMAKE_SYSTEM_INCLUDE_PATH::UNINITIALIZED=/usr/include/X11 -DCMAKE_SYSTEM_LIBRARY_PATH::UNINITIALIZED=/usr/lib/X11 "-DCMAKE_GENERATOR::INTERNAL=Unix Makefiles" -DSITE::UNINITIALIZED=NoSiteGiven -DBUILDNAME::UNINITIALIZED=NoBuldNameGiven -DCMAKE_OSX_SYSROOT::PATH=/Library/Developer/CommandLineTools/SDKs/MacOSX10.14.sdk -DCMAKE_POSITION_INDEPENDENT_CODE:BOOL=ON -DBUILD_TESTING:BOOL=OFF -DELASTIX_BUILD_EXECUTABLE:BOOL=OFF -DELASTIX_USE_OPENMP:BOOL= -DELASTIX_USE_OPENCL:BOOL=OFF -DBUILD_SHARED_LIBS:BOOL=OFF -DCMAKE_INSTALL_PREFIX:PATH=/Users/fabianhielscher/Dev/Masterarbeit/code/build/Elastix-prefix -DITK_DIR:PATH=/Users/fabianhielscher/Dev/Masterarbeit/code/build/ITK-prefix/lib/cmake/ITK -DELASTIX_IMAGE_2D_PIXELTYPES:STRING=float -DELASTIX_IMAGE_3D_PIXELTYPES:STRING=float -DELASTIX_IMAGE_4D_PIXELTYPES:STRING=float -DUSE_AdaptiveStochasticGradientDescent:BOOL=ON -DUSE_AdvancedAffineTransformElastix:BOOL=ON -DUSE_AdvancedBSplineTransform:BOOL=ON -DUSE_AdvancedKappaStatisticMetric:BOOL=ON -DUSE_AdvancedMattesMutualInformationMetric:BOOL=ON -DUSE_AdvancedMeanSquaresMetric:BOOL=ON -DUSE_AdvancedNormalizedCorrelationMetric:BOOL=ON -DUSE_AffineDTITransformElastix:BOOL=ON -DUSE_AffineLogStackTransform:BOOL=ON -DUSE_AffineLogTransformElastix=ON -DUSE_BSplineInterpolator:BOOL=ON -DUSE_BSplineInterpolatorFloat:BOOL=ON -DUSE_BSplineResampleInterpolator:BOOL=ON -DUSE_BSplineResampleInterpolatorFloat:BOOL=ON -DUSE_BSplineStackTransform:BOOL=ON -DUSE_BSplineTransformWithDiffusion:BOOL=OFF -DUSE_CMAEvolutionStrategy:BOOL=OFF -DUSE_CUDAResampler:BOOL=OFF -DUSE_ConjugateGradient:BOOL=OFF -DUSE_ConjugateGradientFRPR:BOOL=OFF -DUSE_CorrespondingPointsEuclideanDistanceMetric:BOOL=ON -DUSE_DeformationFieldTransform:BOOL=ON -DUSE_DisplacementMagnitudePenalty:BOOL=ON -DUSE_DistancePreservingRigidityPenalty:BOOL=OFF -DUSE_EulerTransformElastix:BOOL=ON -DUSE_FiniteDifferenceGradientDescent:BOOL=OFF -DUSE_FixedGenericPyramid:BOOL=ON -DUSE_FixedRecursivePyramid:BOOL=ON -DUSE_FixedShrinkingPyramid:BOOL=ON -DUSE_FixedSmoothingPyramid:BOOL=ON -DUSE_FullSampler:BOOL=OFF -DUSE_FullSearch:BOOL=OFF -DUSE_GradientDifferenceMetric:BOOL=OFF -DUSE_GridSampler:BOOL=ON -DUSE_KNNGraphAlphaMutualInformationMetric:BOOL=OFF -DUSE_LinearInterpolator:BOOL=ON -DUSE_LinearResampleInterpolator:BOOL=ON -DUSE_MissingStructurePenalty:BOOL=OFF -DUSE_MovingGenericPyramid:BOOL=ON -DUSE_MovingRecursivePyramid:BOOL=ON -DUSE_MovingShrinkingPyramid:BOOL=ON -DUSE_MovingSmoothingPyramid:BOOL=ON -DUSE_MultiBSplineTransformWithNormal:BOOL=OFF -DUSE_MultiInputRandomCoordinateSampler:BOOL=ON -DUSE_MultiMetricMultiResolutionRegistration:BOOL=ON -DUSE_MultiResolutionRegistration:BOOL=ON -DUSE_MultiResolutionRegistrationWithFeatures:BOOL=ON -DUSE_MutualInformationHistogramMetric:BOOL=ON -DUSE_MyStandardResampler:BOOL=ON -DUSE_NearestNeighborInterpolator:BOOL=ON -DUSE_NearestNeighborResampleInterpolator:BOOL=ON -DUSE_NormalizedGradientCorrelationMetric:BOOL=ON -DUSE_NormalizedMutualInformationMetric:BOOL=ON -DUSE_PCAMetric:BOOL=ON -DUSE_PCAMetric2:BOOL=ON -DUSE_PatternIntensityMetric:BOOL=OFF -DUSE_PolydataDummyPenalty:BOOL=OFF -DUSE_Powell:BOOL=OFF -DUSE_QuasiNewtonLBFGS:BOOL=ON -DUSE_RSGDEachParameterApart:BOOL=OFF -DUSE_RandomCoordinateSampler:BOOL=ON -DUSE_RandomSampler:BOOL=ON -DUSE_RandomSamplerSparseMask:BOOL=ON -DUSE_RayCastInterpolator:BOOL=OFF -DUSE_RayCastResampleInterpolator:BOOL=OFF -DUSE_ReducedDimensionBSplineInterpolator:BOOL=ON -DUSE_ReducedDimensionBSplineResampleInterpolator:BOOL=ON -DUSE_RegularStepGradientDescent:BOOL=OFF -DUSE_SimilarityTransformElastix:BOOL=ON -DUSE_Simplex:BOOL=OFF -DUSE_SimultaneousPerturbation:BOOL=OFF -DUSE_SplineKernelTransform:BOOL=ON -DUSE_StandardGradientDescent:BOOL=ON -DUSE_StatisticalShapePenalty:BOOL=OFF -DUSE_TransformBendingEnergyPenanalty:BOOL=ON -DUSE_TransformRigidityPenalty:BOOL=ON -DUSE_TranslationTransformElastix:BOOL=ON -DUSE_VarianceOverLastDimensionMetric:BOOL=ON -DUSE_ViolaWellsMutualInformationMetric:BOOL=OFF -DUSE_WeightedCombinationTransformElastix:BOOL=ON "-GUnix Makefiles" /Users/fabianhielscher/Dev/Masterarbeit/code/build/Elastix
	cd /Users/fabianhielscher/Dev/Masterarbeit/code/build/Elastix-build && /Library/Frameworks/Python.framework/Versions/3.7/lib/python3.7/site-packages/cmake/data/CMake.app/Contents/bin/cmake -E touch /Users/fabianhielscher/Dev/Masterarbeit/code/build/Elastix-prefix/src/Elastix-stamp/Elastix-configure

Elastix-prefix/src/Elastix-stamp/Elastix-build: Elastix-prefix/src/Elastix-stamp/Elastix-configure
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/fabianhielscher/Dev/Masterarbeit/code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Performing build step for 'Elastix'"
	cd /Users/fabianhielscher/Dev/Masterarbeit/code/build/Elastix-build && $(MAKE)
	cd /Users/fabianhielscher/Dev/Masterarbeit/code/build/Elastix-build && /Library/Frameworks/Python.framework/Versions/3.7/lib/python3.7/site-packages/cmake/data/CMake.app/Contents/bin/cmake -E touch /Users/fabianhielscher/Dev/Masterarbeit/code/build/Elastix-prefix/src/Elastix-stamp/Elastix-build

Elastix: CMakeFiles/Elastix
Elastix: CMakeFiles/Elastix-complete
Elastix: Elastix-prefix/src/Elastix-stamp/Elastix-install
Elastix: Elastix-prefix/src/Elastix-stamp/Elastix-mkdir
Elastix: Elastix-prefix/src/Elastix-stamp/Elastix-download
Elastix: Elastix-prefix/src/Elastix-stamp/Elastix-update
Elastix: Elastix-prefix/src/Elastix-stamp/Elastix-patch
Elastix: Elastix-prefix/src/Elastix-stamp/Elastix-configure
Elastix: Elastix-prefix/src/Elastix-stamp/Elastix-build
Elastix: CMakeFiles/Elastix.dir/build.make

.PHONY : Elastix

# Rule to build all files generated by this target.
CMakeFiles/Elastix.dir/build: Elastix

.PHONY : CMakeFiles/Elastix.dir/build

CMakeFiles/Elastix.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Elastix.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Elastix.dir/clean

CMakeFiles/Elastix.dir/depend:
	cd /Users/fabianhielscher/Dev/Masterarbeit/code/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/fabianhielscher/Dev/Masterarbeit/code/SimpleElastix/SuperBuild /Users/fabianhielscher/Dev/Masterarbeit/code/SimpleElastix/SuperBuild /Users/fabianhielscher/Dev/Masterarbeit/code/build /Users/fabianhielscher/Dev/Masterarbeit/code/build /Users/fabianhielscher/Dev/Masterarbeit/code/build/CMakeFiles/Elastix.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Elastix.dir/depend
