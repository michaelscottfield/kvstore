# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

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
CMAKE_SOURCE_DIR = /home/mike/kvstore

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/mike/kvstore/build

# Include any dependencies generated for this target.
include test/CMakeFiles/tester.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/tester.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/tester.dir/flags.make

test/CMakeFiles/tester.dir/tester.cc.o: test/CMakeFiles/tester.dir/flags.make
test/CMakeFiles/tester.dir/tester.cc.o: ../test/tester.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mike/kvstore/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/tester.dir/tester.cc.o"
	cd /home/mike/kvstore/build/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tester.dir/tester.cc.o -c /home/mike/kvstore/test/tester.cc

test/CMakeFiles/tester.dir/tester.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tester.dir/tester.cc.i"
	cd /home/mike/kvstore/build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mike/kvstore/test/tester.cc > CMakeFiles/tester.dir/tester.cc.i

test/CMakeFiles/tester.dir/tester.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tester.dir/tester.cc.s"
	cd /home/mike/kvstore/build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mike/kvstore/test/tester.cc -o CMakeFiles/tester.dir/tester.cc.s

test/CMakeFiles/tester.dir/simple_case.cc.o: test/CMakeFiles/tester.dir/flags.make
test/CMakeFiles/tester.dir/simple_case.cc.o: ../test/simple_case.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mike/kvstore/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object test/CMakeFiles/tester.dir/simple_case.cc.o"
	cd /home/mike/kvstore/build/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tester.dir/simple_case.cc.o -c /home/mike/kvstore/test/simple_case.cc

test/CMakeFiles/tester.dir/simple_case.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tester.dir/simple_case.cc.i"
	cd /home/mike/kvstore/build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mike/kvstore/test/simple_case.cc > CMakeFiles/tester.dir/simple_case.cc.i

test/CMakeFiles/tester.dir/simple_case.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tester.dir/simple_case.cc.s"
	cd /home/mike/kvstore/build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mike/kvstore/test/simple_case.cc -o CMakeFiles/tester.dir/simple_case.cc.s

# Object files for target tester
tester_OBJECTS = \
"CMakeFiles/tester.dir/tester.cc.o" \
"CMakeFiles/tester.dir/simple_case.cc.o"

# External object files for target tester
tester_EXTERNAL_OBJECTS =

test/tester: test/CMakeFiles/tester.dir/tester.cc.o
test/tester: test/CMakeFiles/tester.dir/simple_case.cc.o
test/tester: test/CMakeFiles/tester.dir/build.make
test/tester: test/CMakeFiles/tester.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/mike/kvstore/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable tester"
	cd /home/mike/kvstore/build/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tester.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/tester.dir/build: test/tester

.PHONY : test/CMakeFiles/tester.dir/build

test/CMakeFiles/tester.dir/clean:
	cd /home/mike/kvstore/build/test && $(CMAKE_COMMAND) -P CMakeFiles/tester.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/tester.dir/clean

test/CMakeFiles/tester.dir/depend:
	cd /home/mike/kvstore/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/mike/kvstore /home/mike/kvstore/test /home/mike/kvstore/build /home/mike/kvstore/build/test /home/mike/kvstore/build/test/CMakeFiles/tester.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/tester.dir/depend

