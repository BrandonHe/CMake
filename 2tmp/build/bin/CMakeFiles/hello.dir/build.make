# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/brandon/skillStudy/backup/cmake_practice/2tmp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/brandon/skillStudy/backup/cmake_practice/2tmp/build

# Include any dependencies generated for this target.
include bin/CMakeFiles/hello.dir/depend.make

# Include the progress variables for this target.
include bin/CMakeFiles/hello.dir/progress.make

# Include the compile flags for this target's objects.
include bin/CMakeFiles/hello.dir/flags.make

bin/CMakeFiles/hello.dir/main.c.o: bin/CMakeFiles/hello.dir/flags.make
bin/CMakeFiles/hello.dir/main.c.o: ../src/main.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/brandon/skillStudy/backup/cmake_practice/2tmp/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object bin/CMakeFiles/hello.dir/main.c.o"
	cd /home/brandon/skillStudy/backup/cmake_practice/2tmp/build/bin && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/hello.dir/main.c.o   -c /home/brandon/skillStudy/backup/cmake_practice/2tmp/src/main.c

bin/CMakeFiles/hello.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/hello.dir/main.c.i"
	cd /home/brandon/skillStudy/backup/cmake_practice/2tmp/build/bin && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/brandon/skillStudy/backup/cmake_practice/2tmp/src/main.c > CMakeFiles/hello.dir/main.c.i

bin/CMakeFiles/hello.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/hello.dir/main.c.s"
	cd /home/brandon/skillStudy/backup/cmake_practice/2tmp/build/bin && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/brandon/skillStudy/backup/cmake_practice/2tmp/src/main.c -o CMakeFiles/hello.dir/main.c.s

bin/CMakeFiles/hello.dir/main.c.o.requires:
.PHONY : bin/CMakeFiles/hello.dir/main.c.o.requires

bin/CMakeFiles/hello.dir/main.c.o.provides: bin/CMakeFiles/hello.dir/main.c.o.requires
	$(MAKE) -f bin/CMakeFiles/hello.dir/build.make bin/CMakeFiles/hello.dir/main.c.o.provides.build
.PHONY : bin/CMakeFiles/hello.dir/main.c.o.provides

bin/CMakeFiles/hello.dir/main.c.o.provides.build: bin/CMakeFiles/hello.dir/main.c.o

# Object files for target hello
hello_OBJECTS = \
"CMakeFiles/hello.dir/main.c.o"

# External object files for target hello
hello_EXTERNAL_OBJECTS =

bin/hello: bin/CMakeFiles/hello.dir/main.c.o
bin/hello: bin/CMakeFiles/hello.dir/build.make
bin/hello: bin/CMakeFiles/hello.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C executable hello"
	cd /home/brandon/skillStudy/backup/cmake_practice/2tmp/build/bin && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/hello.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
bin/CMakeFiles/hello.dir/build: bin/hello
.PHONY : bin/CMakeFiles/hello.dir/build

bin/CMakeFiles/hello.dir/requires: bin/CMakeFiles/hello.dir/main.c.o.requires
.PHONY : bin/CMakeFiles/hello.dir/requires

bin/CMakeFiles/hello.dir/clean:
	cd /home/brandon/skillStudy/backup/cmake_practice/2tmp/build/bin && $(CMAKE_COMMAND) -P CMakeFiles/hello.dir/cmake_clean.cmake
.PHONY : bin/CMakeFiles/hello.dir/clean

bin/CMakeFiles/hello.dir/depend:
	cd /home/brandon/skillStudy/backup/cmake_practice/2tmp/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/brandon/skillStudy/backup/cmake_practice/2tmp /home/brandon/skillStudy/backup/cmake_practice/2tmp/src /home/brandon/skillStudy/backup/cmake_practice/2tmp/build /home/brandon/skillStudy/backup/cmake_practice/2tmp/build/bin /home/brandon/skillStudy/backup/cmake_practice/2tmp/build/bin/CMakeFiles/hello.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : bin/CMakeFiles/hello.dir/depend

