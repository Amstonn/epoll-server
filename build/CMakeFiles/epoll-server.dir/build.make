# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/amston/C++/epoll-server

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/amston/C++/epoll-server/build

# Include any dependencies generated for this target.
include CMakeFiles/epoll-server.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/epoll-server.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/epoll-server.dir/flags.make

CMakeFiles/epoll-server.dir/src/server.cpp.o: CMakeFiles/epoll-server.dir/flags.make
CMakeFiles/epoll-server.dir/src/server.cpp.o: ../src/server.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/amston/C++/epoll-server/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/epoll-server.dir/src/server.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/epoll-server.dir/src/server.cpp.o -c /home/amston/C++/epoll-server/src/server.cpp

CMakeFiles/epoll-server.dir/src/server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/epoll-server.dir/src/server.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/amston/C++/epoll-server/src/server.cpp > CMakeFiles/epoll-server.dir/src/server.cpp.i

CMakeFiles/epoll-server.dir/src/server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/epoll-server.dir/src/server.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/amston/C++/epoll-server/src/server.cpp -o CMakeFiles/epoll-server.dir/src/server.cpp.s

# Object files for target epoll-server
epoll__server_OBJECTS = \
"CMakeFiles/epoll-server.dir/src/server.cpp.o"

# External object files for target epoll-server
epoll__server_EXTERNAL_OBJECTS =

../bin/epoll-server: CMakeFiles/epoll-server.dir/src/server.cpp.o
../bin/epoll-server: CMakeFiles/epoll-server.dir/build.make
../bin/epoll-server: CMakeFiles/epoll-server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/amston/C++/epoll-server/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../bin/epoll-server"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/epoll-server.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/epoll-server.dir/build: ../bin/epoll-server

.PHONY : CMakeFiles/epoll-server.dir/build

CMakeFiles/epoll-server.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/epoll-server.dir/cmake_clean.cmake
.PHONY : CMakeFiles/epoll-server.dir/clean

CMakeFiles/epoll-server.dir/depend:
	cd /home/amston/C++/epoll-server/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/amston/C++/epoll-server /home/amston/C++/epoll-server /home/amston/C++/epoll-server/build /home/amston/C++/epoll-server/build /home/amston/C++/epoll-server/build/CMakeFiles/epoll-server.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/epoll-server.dir/depend

