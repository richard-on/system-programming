# CMAKE generated file: DO NOT EDIT!
# Generated by "NMake Makefiles" Generator, CMake Version 3.20

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

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

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE
NULL=nul
!ENDIF
SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2020.3.2\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2020.3.2\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\Richard\CLionProjects\system-programming\lab1_DNS

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\Richard\CLionProjects\system-programming\lab1_DNS\cmake-build-release

# Include any dependencies generated for this target.
include CMakeFiles\lab1_DNS.dir\depend.make
# Include the progress variables for this target.
include CMakeFiles\lab1_DNS.dir\progress.make

# Include the compile flags for this target's objects.
include CMakeFiles\lab1_DNS.dir\flags.make

CMakeFiles\lab1_DNS.dir\main.c.obj: CMakeFiles\lab1_DNS.dir\flags.make
CMakeFiles\lab1_DNS.dir\main.c.obj: ..\main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Richard\CLionProjects\system-programming\lab1_DNS\cmake-build-release\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/lab1_DNS.dir/main.c.obj"
	C:\PROGRA~2\MICROS~2\2019\BUILDT~1\VC\Tools\MSVC\1428~1.299\bin\Hostx86\x86\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoCMakeFiles\lab1_DNS.dir\main.c.obj /FdCMakeFiles\lab1_DNS.dir\ /FS -c C:\Users\Richard\CLionProjects\system-programming\lab1_DNS\main.c
<<

CMakeFiles\lab1_DNS.dir\main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lab1_DNS.dir/main.c.i"
	C:\PROGRA~2\MICROS~2\2019\BUILDT~1\VC\Tools\MSVC\1428~1.299\bin\Hostx86\x86\cl.exe > CMakeFiles\lab1_DNS.dir\main.c.i @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\Richard\CLionProjects\system-programming\lab1_DNS\main.c
<<

CMakeFiles\lab1_DNS.dir\main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lab1_DNS.dir/main.c.s"
	C:\PROGRA~2\MICROS~2\2019\BUILDT~1\VC\Tools\MSVC\1428~1.299\bin\Hostx86\x86\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoNUL /FAs /FaCMakeFiles\lab1_DNS.dir\main.c.s /c C:\Users\Richard\CLionProjects\system-programming\lab1_DNS\main.c
<<

CMakeFiles\lab1_DNS.dir\dns.c.obj: CMakeFiles\lab1_DNS.dir\flags.make
CMakeFiles\lab1_DNS.dir\dns.c.obj: ..\dns.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Richard\CLionProjects\system-programming\lab1_DNS\cmake-build-release\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/lab1_DNS.dir/dns.c.obj"
	C:\PROGRA~2\MICROS~2\2019\BUILDT~1\VC\Tools\MSVC\1428~1.299\bin\Hostx86\x86\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoCMakeFiles\lab1_DNS.dir\dns.c.obj /FdCMakeFiles\lab1_DNS.dir\ /FS -c C:\Users\Richard\CLionProjects\system-programming\lab1_DNS\dns.c
<<

CMakeFiles\lab1_DNS.dir\dns.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lab1_DNS.dir/dns.c.i"
	C:\PROGRA~2\MICROS~2\2019\BUILDT~1\VC\Tools\MSVC\1428~1.299\bin\Hostx86\x86\cl.exe > CMakeFiles\lab1_DNS.dir\dns.c.i @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\Richard\CLionProjects\system-programming\lab1_DNS\dns.c
<<

CMakeFiles\lab1_DNS.dir\dns.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lab1_DNS.dir/dns.c.s"
	C:\PROGRA~2\MICROS~2\2019\BUILDT~1\VC\Tools\MSVC\1428~1.299\bin\Hostx86\x86\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoNUL /FAs /FaCMakeFiles\lab1_DNS.dir\dns.c.s /c C:\Users\Richard\CLionProjects\system-programming\lab1_DNS\dns.c
<<

CMakeFiles\lab1_DNS.dir\hashTable.c.obj: CMakeFiles\lab1_DNS.dir\flags.make
CMakeFiles\lab1_DNS.dir\hashTable.c.obj: ..\hashTable.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Richard\CLionProjects\system-programming\lab1_DNS\cmake-build-release\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/lab1_DNS.dir/hashTable.c.obj"
	C:\PROGRA~2\MICROS~2\2019\BUILDT~1\VC\Tools\MSVC\1428~1.299\bin\Hostx86\x86\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoCMakeFiles\lab1_DNS.dir\hashTable.c.obj /FdCMakeFiles\lab1_DNS.dir\ /FS -c C:\Users\Richard\CLionProjects\system-programming\lab1_DNS\hashTable.c
<<

CMakeFiles\lab1_DNS.dir\hashTable.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lab1_DNS.dir/hashTable.c.i"
	C:\PROGRA~2\MICROS~2\2019\BUILDT~1\VC\Tools\MSVC\1428~1.299\bin\Hostx86\x86\cl.exe > CMakeFiles\lab1_DNS.dir\hashTable.c.i @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\Richard\CLionProjects\system-programming\lab1_DNS\hashTable.c
<<

CMakeFiles\lab1_DNS.dir\hashTable.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lab1_DNS.dir/hashTable.c.s"
	C:\PROGRA~2\MICROS~2\2019\BUILDT~1\VC\Tools\MSVC\1428~1.299\bin\Hostx86\x86\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoNUL /FAs /FaCMakeFiles\lab1_DNS.dir\hashTable.c.s /c C:\Users\Richard\CLionProjects\system-programming\lab1_DNS\hashTable.c
<<

# Object files for target lab1_DNS
lab1_DNS_OBJECTS = \
"CMakeFiles\lab1_DNS.dir\main.c.obj" \
"CMakeFiles\lab1_DNS.dir\dns.c.obj" \
"CMakeFiles\lab1_DNS.dir\hashTable.c.obj"

# External object files for target lab1_DNS
lab1_DNS_EXTERNAL_OBJECTS =

lab1_DNS.exe: CMakeFiles\lab1_DNS.dir\main.c.obj
lab1_DNS.exe: CMakeFiles\lab1_DNS.dir\dns.c.obj
lab1_DNS.exe: CMakeFiles\lab1_DNS.dir\hashTable.c.obj
lab1_DNS.exe: CMakeFiles\lab1_DNS.dir\build.make
lab1_DNS.exe: CMakeFiles\lab1_DNS.dir\objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\Richard\CLionProjects\system-programming\lab1_DNS\cmake-build-release\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking C executable lab1_DNS.exe"
	"C:\Program Files\JetBrains\CLion 2020.3.2\bin\cmake\win\bin\cmake.exe" -E vs_link_exe --intdir=CMakeFiles\lab1_DNS.dir --rc=C:\PROGRA~2\WI3CF2~1\10\bin\100190~1.0\x86\rc.exe --mt=C:\PROGRA~2\WI3CF2~1\10\bin\100190~1.0\x86\mt.exe --manifests -- C:\PROGRA~2\MICROS~2\2019\BUILDT~1\VC\Tools\MSVC\1428~1.299\bin\Hostx86\x86\link.exe /nologo @CMakeFiles\lab1_DNS.dir\objects1.rsp @<<
 /out:lab1_DNS.exe /implib:lab1_DNS.lib /pdb:C:\Users\Richard\CLionProjects\system-programming\lab1_DNS\cmake-build-release\lab1_DNS.pdb /version:0.0 /machine:X86 /INCREMENTAL:NO /subsystem:console  kernel32.lib user32.lib gdi32.lib winspool.lib shell32.lib ole32.lib oleaut32.lib uuid.lib comdlg32.lib advapi32.lib 
<<

# Rule to build all files generated by this target.
CMakeFiles\lab1_DNS.dir\build: lab1_DNS.exe
.PHONY : CMakeFiles\lab1_DNS.dir\build

CMakeFiles\lab1_DNS.dir\clean:
	$(CMAKE_COMMAND) -P CMakeFiles\lab1_DNS.dir\cmake_clean.cmake
.PHONY : CMakeFiles\lab1_DNS.dir\clean

CMakeFiles\lab1_DNS.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" C:\Users\Richard\CLionProjects\system-programming\lab1_DNS C:\Users\Richard\CLionProjects\system-programming\lab1_DNS C:\Users\Richard\CLionProjects\system-programming\lab1_DNS\cmake-build-release C:\Users\Richard\CLionProjects\system-programming\lab1_DNS\cmake-build-release C:\Users\Richard\CLionProjects\system-programming\lab1_DNS\cmake-build-release\CMakeFiles\lab1_DNS.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles\lab1_DNS.dir\depend

