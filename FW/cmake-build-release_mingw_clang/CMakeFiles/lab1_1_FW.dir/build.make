# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.20

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2020.3.2\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2020.3.2\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\Richard\CLionProjects\system-programming\FW

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\Richard\CLionProjects\system-programming\FW\cmake-build-release_mingw_clang

# Include any dependencies generated for this target.
include CMakeFiles/lab1_1_FW.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/lab1_1_FW.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/lab1_1_FW.dir/flags.make

CMakeFiles/lab1_1_FW.dir/main.c.obj: CMakeFiles/lab1_1_FW.dir/flags.make
CMakeFiles/lab1_1_FW.dir/main.c.obj: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Richard\CLionProjects\system-programming\FW\cmake-build-release_mingw_clang\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/lab1_1_FW.dir/main.c.obj"
	C:\msys64\mingw64\bin\clang.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\lab1_1_FW.dir\main.c.obj -c C:\Users\Richard\CLionProjects\system-programming\FW\main.c

CMakeFiles/lab1_1_FW.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lab1_1_FW.dir/main.c.i"
	C:\msys64\mingw64\bin\clang.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\Richard\CLionProjects\system-programming\FW\main.c > CMakeFiles\lab1_1_FW.dir\main.c.i

CMakeFiles/lab1_1_FW.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lab1_1_FW.dir/main.c.s"
	C:\msys64\mingw64\bin\clang.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\Richard\CLionProjects\system-programming\FW\main.c -o CMakeFiles\lab1_1_FW.dir\main.c.s

CMakeFiles/lab1_1_FW.dir/splpv1.c.obj: CMakeFiles/lab1_1_FW.dir/flags.make
CMakeFiles/lab1_1_FW.dir/splpv1.c.obj: ../splpv1.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Richard\CLionProjects\system-programming\FW\cmake-build-release_mingw_clang\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/lab1_1_FW.dir/splpv1.c.obj"
	C:\msys64\mingw64\bin\clang.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\lab1_1_FW.dir\splpv1.c.obj -c C:\Users\Richard\CLionProjects\system-programming\FW\splpv1.c

CMakeFiles/lab1_1_FW.dir/splpv1.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lab1_1_FW.dir/splpv1.c.i"
	C:\msys64\mingw64\bin\clang.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\Richard\CLionProjects\system-programming\FW\splpv1.c > CMakeFiles\lab1_1_FW.dir\splpv1.c.i

CMakeFiles/lab1_1_FW.dir/splpv1.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lab1_1_FW.dir/splpv1.c.s"
	C:\msys64\mingw64\bin\clang.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\Richard\CLionProjects\system-programming\FW\splpv1.c -o CMakeFiles\lab1_1_FW.dir\splpv1.c.s

# Object files for target lab1_1_FW
lab1_1_FW_OBJECTS = \
"CMakeFiles/lab1_1_FW.dir/main.c.obj" \
"CMakeFiles/lab1_1_FW.dir/splpv1.c.obj"

# External object files for target lab1_1_FW
lab1_1_FW_EXTERNAL_OBJECTS =

lab1_1_FW.exe: CMakeFiles/lab1_1_FW.dir/main.c.obj
lab1_1_FW.exe: CMakeFiles/lab1_1_FW.dir/splpv1.c.obj
lab1_1_FW.exe: CMakeFiles/lab1_1_FW.dir/build.make
lab1_1_FW.exe: CMakeFiles/lab1_1_FW.dir/linklibs.rsp
lab1_1_FW.exe: CMakeFiles/lab1_1_FW.dir/objects1.rsp
lab1_1_FW.exe: CMakeFiles/lab1_1_FW.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\Richard\CLionProjects\system-programming\FW\cmake-build-release_mingw_clang\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable lab1_1_FW.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\lab1_1_FW.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/lab1_1_FW.dir/build: lab1_1_FW.exe
.PHONY : CMakeFiles/lab1_1_FW.dir/build

CMakeFiles/lab1_1_FW.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\lab1_1_FW.dir\cmake_clean.cmake
.PHONY : CMakeFiles/lab1_1_FW.dir/clean

CMakeFiles/lab1_1_FW.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\Richard\CLionProjects\system-programming\FW C:\Users\Richard\CLionProjects\system-programming\FW C:\Users\Richard\CLionProjects\system-programming\FW\cmake-build-release_mingw_clang C:\Users\Richard\CLionProjects\system-programming\FW\cmake-build-release_mingw_clang C:\Users\Richard\CLionProjects\system-programming\FW\cmake-build-release_mingw_clang\CMakeFiles\lab1_1_FW.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/lab1_1_FW.dir/depend
