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
CMAKE_BINARY_DIR = /home/mike/kvstore

# Include any dependencies generated for this target.
include src/CMakeFiles/kv_store.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/kv_store.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/kv_store.dir/flags.make

src/CMakeFiles/kv_store.dir/file_io.cc.o: src/CMakeFiles/kv_store.dir/flags.make
src/CMakeFiles/kv_store.dir/file_io.cc.o: src/file_io.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mike/kvstore/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/kv_store.dir/file_io.cc.o"
	cd /home/mike/kvstore/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/kv_store.dir/file_io.cc.o -c /home/mike/kvstore/src/file_io.cc

src/CMakeFiles/kv_store.dir/file_io.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/kv_store.dir/file_io.cc.i"
	cd /home/mike/kvstore/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mike/kvstore/src/file_io.cc > CMakeFiles/kv_store.dir/file_io.cc.i

src/CMakeFiles/kv_store.dir/file_io.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/kv_store.dir/file_io.cc.s"
	cd /home/mike/kvstore/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mike/kvstore/src/file_io.cc -o CMakeFiles/kv_store.dir/file_io.cc.s

src/CMakeFiles/kv_store.dir/data_mgr.cc.o: src/CMakeFiles/kv_store.dir/flags.make
src/CMakeFiles/kv_store.dir/data_mgr.cc.o: src/data_mgr.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mike/kvstore/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/CMakeFiles/kv_store.dir/data_mgr.cc.o"
	cd /home/mike/kvstore/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/kv_store.dir/data_mgr.cc.o -c /home/mike/kvstore/src/data_mgr.cc

src/CMakeFiles/kv_store.dir/data_mgr.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/kv_store.dir/data_mgr.cc.i"
	cd /home/mike/kvstore/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mike/kvstore/src/data_mgr.cc > CMakeFiles/kv_store.dir/data_mgr.cc.i

src/CMakeFiles/kv_store.dir/data_mgr.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/kv_store.dir/data_mgr.cc.s"
	cd /home/mike/kvstore/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mike/kvstore/src/data_mgr.cc -o CMakeFiles/kv_store.dir/data_mgr.cc.s

src/CMakeFiles/kv_store.dir/meta_mgr.cc.o: src/CMakeFiles/kv_store.dir/flags.make
src/CMakeFiles/kv_store.dir/meta_mgr.cc.o: src/meta_mgr.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mike/kvstore/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/CMakeFiles/kv_store.dir/meta_mgr.cc.o"
	cd /home/mike/kvstore/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/kv_store.dir/meta_mgr.cc.o -c /home/mike/kvstore/src/meta_mgr.cc

src/CMakeFiles/kv_store.dir/meta_mgr.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/kv_store.dir/meta_mgr.cc.i"
	cd /home/mike/kvstore/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mike/kvstore/src/meta_mgr.cc > CMakeFiles/kv_store.dir/meta_mgr.cc.i

src/CMakeFiles/kv_store.dir/meta_mgr.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/kv_store.dir/meta_mgr.cc.s"
	cd /home/mike/kvstore/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mike/kvstore/src/meta_mgr.cc -o CMakeFiles/kv_store.dir/meta_mgr.cc.s

src/CMakeFiles/kv_store.dir/kv_store.cc.o: src/CMakeFiles/kv_store.dir/flags.make
src/CMakeFiles/kv_store.dir/kv_store.cc.o: src/kv_store.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mike/kvstore/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object src/CMakeFiles/kv_store.dir/kv_store.cc.o"
	cd /home/mike/kvstore/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/kv_store.dir/kv_store.cc.o -c /home/mike/kvstore/src/kv_store.cc

src/CMakeFiles/kv_store.dir/kv_store.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/kv_store.dir/kv_store.cc.i"
	cd /home/mike/kvstore/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mike/kvstore/src/kv_store.cc > CMakeFiles/kv_store.dir/kv_store.cc.i

src/CMakeFiles/kv_store.dir/kv_store.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/kv_store.dir/kv_store.cc.s"
	cd /home/mike/kvstore/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mike/kvstore/src/kv_store.cc -o CMakeFiles/kv_store.dir/kv_store.cc.s

src/CMakeFiles/kv_store.dir/kv_intf.cc.o: src/CMakeFiles/kv_store.dir/flags.make
src/CMakeFiles/kv_store.dir/kv_intf.cc.o: src/kv_intf.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mike/kvstore/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object src/CMakeFiles/kv_store.dir/kv_intf.cc.o"
	cd /home/mike/kvstore/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/kv_store.dir/kv_intf.cc.o -c /home/mike/kvstore/src/kv_intf.cc

src/CMakeFiles/kv_store.dir/kv_intf.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/kv_store.dir/kv_intf.cc.i"
	cd /home/mike/kvstore/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mike/kvstore/src/kv_intf.cc > CMakeFiles/kv_store.dir/kv_intf.cc.i

src/CMakeFiles/kv_store.dir/kv_intf.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/kv_store.dir/kv_intf.cc.s"
	cd /home/mike/kvstore/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mike/kvstore/src/kv_intf.cc -o CMakeFiles/kv_store.dir/kv_intf.cc.s

# Object files for target kv_store
kv_store_OBJECTS = \
"CMakeFiles/kv_store.dir/file_io.cc.o" \
"CMakeFiles/kv_store.dir/data_mgr.cc.o" \
"CMakeFiles/kv_store.dir/meta_mgr.cc.o" \
"CMakeFiles/kv_store.dir/kv_store.cc.o" \
"CMakeFiles/kv_store.dir/kv_intf.cc.o"

# External object files for target kv_store
kv_store_EXTERNAL_OBJECTS =

src/libkv_store.so: src/CMakeFiles/kv_store.dir/file_io.cc.o
src/libkv_store.so: src/CMakeFiles/kv_store.dir/data_mgr.cc.o
src/libkv_store.so: src/CMakeFiles/kv_store.dir/meta_mgr.cc.o
src/libkv_store.so: src/CMakeFiles/kv_store.dir/kv_store.cc.o
src/libkv_store.so: src/CMakeFiles/kv_store.dir/kv_intf.cc.o
src/libkv_store.so: src/CMakeFiles/kv_store.dir/build.make
src/libkv_store.so: src/CMakeFiles/kv_store.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/mike/kvstore/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX shared library libkv_store.so"
	cd /home/mike/kvstore/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/kv_store.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/kv_store.dir/build: src/libkv_store.so

.PHONY : src/CMakeFiles/kv_store.dir/build

src/CMakeFiles/kv_store.dir/clean:
	cd /home/mike/kvstore/src && $(CMAKE_COMMAND) -P CMakeFiles/kv_store.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/kv_store.dir/clean

src/CMakeFiles/kv_store.dir/depend:
	cd /home/mike/kvstore && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/mike/kvstore /home/mike/kvstore/src /home/mike/kvstore /home/mike/kvstore/src /home/mike/kvstore/src/CMakeFiles/kv_store.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/kv_store.dir/depend

