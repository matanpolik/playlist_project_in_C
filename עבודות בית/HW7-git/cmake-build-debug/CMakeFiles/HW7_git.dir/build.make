# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/Users/matanpolik/Desktop/COMPUTER SCIENCE/שנה א/מבוא למדמח/עבודות בית/HW7-git"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/Users/matanpolik/Desktop/COMPUTER SCIENCE/שנה א/מבוא למדמח/עבודות בית/HW7-git/cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/HW7_git.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/HW7_git.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/HW7_git.dir/flags.make

CMakeFiles/HW7_git.dir/main.c.o: CMakeFiles/HW7_git.dir/flags.make
CMakeFiles/HW7_git.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/matanpolik/Desktop/COMPUTER SCIENCE/שנה א/מבוא למדמח/עבודות בית/HW7-git/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/HW7_git.dir/main.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/HW7_git.dir/main.c.o -c "/Users/matanpolik/Desktop/COMPUTER SCIENCE/שנה א/מבוא למדמח/עבודות בית/HW7-git/main.c"

CMakeFiles/HW7_git.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/HW7_git.dir/main.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/Users/matanpolik/Desktop/COMPUTER SCIENCE/שנה א/מבוא למדמח/עבודות בית/HW7-git/main.c" > CMakeFiles/HW7_git.dir/main.c.i

CMakeFiles/HW7_git.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/HW7_git.dir/main.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/Users/matanpolik/Desktop/COMPUTER SCIENCE/שנה א/מבוא למדמח/עבודות בית/HW7-git/main.c" -o CMakeFiles/HW7_git.dir/main.c.s

# Object files for target HW7_git
HW7_git_OBJECTS = \
"CMakeFiles/HW7_git.dir/main.c.o"

# External object files for target HW7_git
HW7_git_EXTERNAL_OBJECTS =

HW7_git: CMakeFiles/HW7_git.dir/main.c.o
HW7_git: CMakeFiles/HW7_git.dir/build.make
HW7_git: CMakeFiles/HW7_git.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/matanpolik/Desktop/COMPUTER SCIENCE/שנה א/מבוא למדמח/עבודות בית/HW7-git/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable HW7_git"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/HW7_git.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/HW7_git.dir/build: HW7_git
.PHONY : CMakeFiles/HW7_git.dir/build

CMakeFiles/HW7_git.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/HW7_git.dir/cmake_clean.cmake
.PHONY : CMakeFiles/HW7_git.dir/clean

CMakeFiles/HW7_git.dir/depend:
	cd "/Users/matanpolik/Desktop/COMPUTER SCIENCE/שנה א/מבוא למדמח/עבודות בית/HW7-git/cmake-build-debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/matanpolik/Desktop/COMPUTER SCIENCE/שנה א/מבוא למדמח/עבודות בית/HW7-git" "/Users/matanpolik/Desktop/COMPUTER SCIENCE/שנה א/מבוא למדמח/עבודות בית/HW7-git" "/Users/matanpolik/Desktop/COMPUTER SCIENCE/שנה א/מבוא למדמח/עבודות בית/HW7-git/cmake-build-debug" "/Users/matanpolik/Desktop/COMPUTER SCIENCE/שנה א/מבוא למדמח/עבודות בית/HW7-git/cmake-build-debug" "/Users/matanpolik/Desktop/COMPUTER SCIENCE/שנה א/מבוא למדמח/עבודות בית/HW7-git/cmake-build-debug/CMakeFiles/HW7_git.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/HW7_git.dir/depend

