# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/han/Documents/muduo-core-client/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/han/Documents/muduo-core-client/src/test

# Include any dependencies generated for this target.
include CMakeFiles/my_muduo.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/my_muduo.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/my_muduo.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/my_muduo.dir/flags.make

CMakeFiles/my_muduo.dir/Acceptor.cpp.o: CMakeFiles/my_muduo.dir/flags.make
CMakeFiles/my_muduo.dir/Acceptor.cpp.o: ../Acceptor.cpp
CMakeFiles/my_muduo.dir/Acceptor.cpp.o: CMakeFiles/my_muduo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/han/Documents/muduo-core-client/src/test/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/my_muduo.dir/Acceptor.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/my_muduo.dir/Acceptor.cpp.o -MF CMakeFiles/my_muduo.dir/Acceptor.cpp.o.d -o CMakeFiles/my_muduo.dir/Acceptor.cpp.o -c /home/han/Documents/muduo-core-client/src/Acceptor.cpp

CMakeFiles/my_muduo.dir/Acceptor.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/my_muduo.dir/Acceptor.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/han/Documents/muduo-core-client/src/Acceptor.cpp > CMakeFiles/my_muduo.dir/Acceptor.cpp.i

CMakeFiles/my_muduo.dir/Acceptor.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/my_muduo.dir/Acceptor.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/han/Documents/muduo-core-client/src/Acceptor.cpp -o CMakeFiles/my_muduo.dir/Acceptor.cpp.s

CMakeFiles/my_muduo.dir/Buffer.cpp.o: CMakeFiles/my_muduo.dir/flags.make
CMakeFiles/my_muduo.dir/Buffer.cpp.o: ../Buffer.cpp
CMakeFiles/my_muduo.dir/Buffer.cpp.o: CMakeFiles/my_muduo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/han/Documents/muduo-core-client/src/test/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/my_muduo.dir/Buffer.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/my_muduo.dir/Buffer.cpp.o -MF CMakeFiles/my_muduo.dir/Buffer.cpp.o.d -o CMakeFiles/my_muduo.dir/Buffer.cpp.o -c /home/han/Documents/muduo-core-client/src/Buffer.cpp

CMakeFiles/my_muduo.dir/Buffer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/my_muduo.dir/Buffer.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/han/Documents/muduo-core-client/src/Buffer.cpp > CMakeFiles/my_muduo.dir/Buffer.cpp.i

CMakeFiles/my_muduo.dir/Buffer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/my_muduo.dir/Buffer.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/han/Documents/muduo-core-client/src/Buffer.cpp -o CMakeFiles/my_muduo.dir/Buffer.cpp.s

CMakeFiles/my_muduo.dir/Channel.cpp.o: CMakeFiles/my_muduo.dir/flags.make
CMakeFiles/my_muduo.dir/Channel.cpp.o: ../Channel.cpp
CMakeFiles/my_muduo.dir/Channel.cpp.o: CMakeFiles/my_muduo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/han/Documents/muduo-core-client/src/test/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/my_muduo.dir/Channel.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/my_muduo.dir/Channel.cpp.o -MF CMakeFiles/my_muduo.dir/Channel.cpp.o.d -o CMakeFiles/my_muduo.dir/Channel.cpp.o -c /home/han/Documents/muduo-core-client/src/Channel.cpp

CMakeFiles/my_muduo.dir/Channel.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/my_muduo.dir/Channel.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/han/Documents/muduo-core-client/src/Channel.cpp > CMakeFiles/my_muduo.dir/Channel.cpp.i

CMakeFiles/my_muduo.dir/Channel.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/my_muduo.dir/Channel.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/han/Documents/muduo-core-client/src/Channel.cpp -o CMakeFiles/my_muduo.dir/Channel.cpp.s

CMakeFiles/my_muduo.dir/Connector.cpp.o: CMakeFiles/my_muduo.dir/flags.make
CMakeFiles/my_muduo.dir/Connector.cpp.o: ../Connector.cpp
CMakeFiles/my_muduo.dir/Connector.cpp.o: CMakeFiles/my_muduo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/han/Documents/muduo-core-client/src/test/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/my_muduo.dir/Connector.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/my_muduo.dir/Connector.cpp.o -MF CMakeFiles/my_muduo.dir/Connector.cpp.o.d -o CMakeFiles/my_muduo.dir/Connector.cpp.o -c /home/han/Documents/muduo-core-client/src/Connector.cpp

CMakeFiles/my_muduo.dir/Connector.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/my_muduo.dir/Connector.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/han/Documents/muduo-core-client/src/Connector.cpp > CMakeFiles/my_muduo.dir/Connector.cpp.i

CMakeFiles/my_muduo.dir/Connector.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/my_muduo.dir/Connector.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/han/Documents/muduo-core-client/src/Connector.cpp -o CMakeFiles/my_muduo.dir/Connector.cpp.s

CMakeFiles/my_muduo.dir/CurrentThread.cpp.o: CMakeFiles/my_muduo.dir/flags.make
CMakeFiles/my_muduo.dir/CurrentThread.cpp.o: ../CurrentThread.cpp
CMakeFiles/my_muduo.dir/CurrentThread.cpp.o: CMakeFiles/my_muduo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/han/Documents/muduo-core-client/src/test/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/my_muduo.dir/CurrentThread.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/my_muduo.dir/CurrentThread.cpp.o -MF CMakeFiles/my_muduo.dir/CurrentThread.cpp.o.d -o CMakeFiles/my_muduo.dir/CurrentThread.cpp.o -c /home/han/Documents/muduo-core-client/src/CurrentThread.cpp

CMakeFiles/my_muduo.dir/CurrentThread.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/my_muduo.dir/CurrentThread.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/han/Documents/muduo-core-client/src/CurrentThread.cpp > CMakeFiles/my_muduo.dir/CurrentThread.cpp.i

CMakeFiles/my_muduo.dir/CurrentThread.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/my_muduo.dir/CurrentThread.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/han/Documents/muduo-core-client/src/CurrentThread.cpp -o CMakeFiles/my_muduo.dir/CurrentThread.cpp.s

CMakeFiles/my_muduo.dir/DefaultPoller.cpp.o: CMakeFiles/my_muduo.dir/flags.make
CMakeFiles/my_muduo.dir/DefaultPoller.cpp.o: ../DefaultPoller.cpp
CMakeFiles/my_muduo.dir/DefaultPoller.cpp.o: CMakeFiles/my_muduo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/han/Documents/muduo-core-client/src/test/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/my_muduo.dir/DefaultPoller.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/my_muduo.dir/DefaultPoller.cpp.o -MF CMakeFiles/my_muduo.dir/DefaultPoller.cpp.o.d -o CMakeFiles/my_muduo.dir/DefaultPoller.cpp.o -c /home/han/Documents/muduo-core-client/src/DefaultPoller.cpp

CMakeFiles/my_muduo.dir/DefaultPoller.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/my_muduo.dir/DefaultPoller.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/han/Documents/muduo-core-client/src/DefaultPoller.cpp > CMakeFiles/my_muduo.dir/DefaultPoller.cpp.i

CMakeFiles/my_muduo.dir/DefaultPoller.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/my_muduo.dir/DefaultPoller.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/han/Documents/muduo-core-client/src/DefaultPoller.cpp -o CMakeFiles/my_muduo.dir/DefaultPoller.cpp.s

CMakeFiles/my_muduo.dir/EPollPoller.cpp.o: CMakeFiles/my_muduo.dir/flags.make
CMakeFiles/my_muduo.dir/EPollPoller.cpp.o: ../EPollPoller.cpp
CMakeFiles/my_muduo.dir/EPollPoller.cpp.o: CMakeFiles/my_muduo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/han/Documents/muduo-core-client/src/test/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/my_muduo.dir/EPollPoller.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/my_muduo.dir/EPollPoller.cpp.o -MF CMakeFiles/my_muduo.dir/EPollPoller.cpp.o.d -o CMakeFiles/my_muduo.dir/EPollPoller.cpp.o -c /home/han/Documents/muduo-core-client/src/EPollPoller.cpp

CMakeFiles/my_muduo.dir/EPollPoller.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/my_muduo.dir/EPollPoller.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/han/Documents/muduo-core-client/src/EPollPoller.cpp > CMakeFiles/my_muduo.dir/EPollPoller.cpp.i

CMakeFiles/my_muduo.dir/EPollPoller.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/my_muduo.dir/EPollPoller.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/han/Documents/muduo-core-client/src/EPollPoller.cpp -o CMakeFiles/my_muduo.dir/EPollPoller.cpp.s

CMakeFiles/my_muduo.dir/EventLoop.cpp.o: CMakeFiles/my_muduo.dir/flags.make
CMakeFiles/my_muduo.dir/EventLoop.cpp.o: ../EventLoop.cpp
CMakeFiles/my_muduo.dir/EventLoop.cpp.o: CMakeFiles/my_muduo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/han/Documents/muduo-core-client/src/test/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/my_muduo.dir/EventLoop.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/my_muduo.dir/EventLoop.cpp.o -MF CMakeFiles/my_muduo.dir/EventLoop.cpp.o.d -o CMakeFiles/my_muduo.dir/EventLoop.cpp.o -c /home/han/Documents/muduo-core-client/src/EventLoop.cpp

CMakeFiles/my_muduo.dir/EventLoop.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/my_muduo.dir/EventLoop.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/han/Documents/muduo-core-client/src/EventLoop.cpp > CMakeFiles/my_muduo.dir/EventLoop.cpp.i

CMakeFiles/my_muduo.dir/EventLoop.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/my_muduo.dir/EventLoop.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/han/Documents/muduo-core-client/src/EventLoop.cpp -o CMakeFiles/my_muduo.dir/EventLoop.cpp.s

CMakeFiles/my_muduo.dir/EventLoopThread.cpp.o: CMakeFiles/my_muduo.dir/flags.make
CMakeFiles/my_muduo.dir/EventLoopThread.cpp.o: ../EventLoopThread.cpp
CMakeFiles/my_muduo.dir/EventLoopThread.cpp.o: CMakeFiles/my_muduo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/han/Documents/muduo-core-client/src/test/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/my_muduo.dir/EventLoopThread.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/my_muduo.dir/EventLoopThread.cpp.o -MF CMakeFiles/my_muduo.dir/EventLoopThread.cpp.o.d -o CMakeFiles/my_muduo.dir/EventLoopThread.cpp.o -c /home/han/Documents/muduo-core-client/src/EventLoopThread.cpp

CMakeFiles/my_muduo.dir/EventLoopThread.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/my_muduo.dir/EventLoopThread.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/han/Documents/muduo-core-client/src/EventLoopThread.cpp > CMakeFiles/my_muduo.dir/EventLoopThread.cpp.i

CMakeFiles/my_muduo.dir/EventLoopThread.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/my_muduo.dir/EventLoopThread.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/han/Documents/muduo-core-client/src/EventLoopThread.cpp -o CMakeFiles/my_muduo.dir/EventLoopThread.cpp.s

CMakeFiles/my_muduo.dir/EventLoopThreadPool.cpp.o: CMakeFiles/my_muduo.dir/flags.make
CMakeFiles/my_muduo.dir/EventLoopThreadPool.cpp.o: ../EventLoopThreadPool.cpp
CMakeFiles/my_muduo.dir/EventLoopThreadPool.cpp.o: CMakeFiles/my_muduo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/han/Documents/muduo-core-client/src/test/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/my_muduo.dir/EventLoopThreadPool.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/my_muduo.dir/EventLoopThreadPool.cpp.o -MF CMakeFiles/my_muduo.dir/EventLoopThreadPool.cpp.o.d -o CMakeFiles/my_muduo.dir/EventLoopThreadPool.cpp.o -c /home/han/Documents/muduo-core-client/src/EventLoopThreadPool.cpp

CMakeFiles/my_muduo.dir/EventLoopThreadPool.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/my_muduo.dir/EventLoopThreadPool.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/han/Documents/muduo-core-client/src/EventLoopThreadPool.cpp > CMakeFiles/my_muduo.dir/EventLoopThreadPool.cpp.i

CMakeFiles/my_muduo.dir/EventLoopThreadPool.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/my_muduo.dir/EventLoopThreadPool.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/han/Documents/muduo-core-client/src/EventLoopThreadPool.cpp -o CMakeFiles/my_muduo.dir/EventLoopThreadPool.cpp.s

CMakeFiles/my_muduo.dir/HttpContext.cpp.o: CMakeFiles/my_muduo.dir/flags.make
CMakeFiles/my_muduo.dir/HttpContext.cpp.o: ../HttpContext.cpp
CMakeFiles/my_muduo.dir/HttpContext.cpp.o: CMakeFiles/my_muduo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/han/Documents/muduo-core-client/src/test/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/my_muduo.dir/HttpContext.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/my_muduo.dir/HttpContext.cpp.o -MF CMakeFiles/my_muduo.dir/HttpContext.cpp.o.d -o CMakeFiles/my_muduo.dir/HttpContext.cpp.o -c /home/han/Documents/muduo-core-client/src/HttpContext.cpp

CMakeFiles/my_muduo.dir/HttpContext.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/my_muduo.dir/HttpContext.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/han/Documents/muduo-core-client/src/HttpContext.cpp > CMakeFiles/my_muduo.dir/HttpContext.cpp.i

CMakeFiles/my_muduo.dir/HttpContext.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/my_muduo.dir/HttpContext.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/han/Documents/muduo-core-client/src/HttpContext.cpp -o CMakeFiles/my_muduo.dir/HttpContext.cpp.s

CMakeFiles/my_muduo.dir/HttpResponse.cpp.o: CMakeFiles/my_muduo.dir/flags.make
CMakeFiles/my_muduo.dir/HttpResponse.cpp.o: ../HttpResponse.cpp
CMakeFiles/my_muduo.dir/HttpResponse.cpp.o: CMakeFiles/my_muduo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/han/Documents/muduo-core-client/src/test/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/my_muduo.dir/HttpResponse.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/my_muduo.dir/HttpResponse.cpp.o -MF CMakeFiles/my_muduo.dir/HttpResponse.cpp.o.d -o CMakeFiles/my_muduo.dir/HttpResponse.cpp.o -c /home/han/Documents/muduo-core-client/src/HttpResponse.cpp

CMakeFiles/my_muduo.dir/HttpResponse.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/my_muduo.dir/HttpResponse.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/han/Documents/muduo-core-client/src/HttpResponse.cpp > CMakeFiles/my_muduo.dir/HttpResponse.cpp.i

CMakeFiles/my_muduo.dir/HttpResponse.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/my_muduo.dir/HttpResponse.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/han/Documents/muduo-core-client/src/HttpResponse.cpp -o CMakeFiles/my_muduo.dir/HttpResponse.cpp.s

CMakeFiles/my_muduo.dir/HttpServer.cpp.o: CMakeFiles/my_muduo.dir/flags.make
CMakeFiles/my_muduo.dir/HttpServer.cpp.o: ../HttpServer.cpp
CMakeFiles/my_muduo.dir/HttpServer.cpp.o: CMakeFiles/my_muduo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/han/Documents/muduo-core-client/src/test/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object CMakeFiles/my_muduo.dir/HttpServer.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/my_muduo.dir/HttpServer.cpp.o -MF CMakeFiles/my_muduo.dir/HttpServer.cpp.o.d -o CMakeFiles/my_muduo.dir/HttpServer.cpp.o -c /home/han/Documents/muduo-core-client/src/HttpServer.cpp

CMakeFiles/my_muduo.dir/HttpServer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/my_muduo.dir/HttpServer.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/han/Documents/muduo-core-client/src/HttpServer.cpp > CMakeFiles/my_muduo.dir/HttpServer.cpp.i

CMakeFiles/my_muduo.dir/HttpServer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/my_muduo.dir/HttpServer.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/han/Documents/muduo-core-client/src/HttpServer.cpp -o CMakeFiles/my_muduo.dir/HttpServer.cpp.s

CMakeFiles/my_muduo.dir/InetAddress.cpp.o: CMakeFiles/my_muduo.dir/flags.make
CMakeFiles/my_muduo.dir/InetAddress.cpp.o: ../InetAddress.cpp
CMakeFiles/my_muduo.dir/InetAddress.cpp.o: CMakeFiles/my_muduo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/han/Documents/muduo-core-client/src/test/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building CXX object CMakeFiles/my_muduo.dir/InetAddress.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/my_muduo.dir/InetAddress.cpp.o -MF CMakeFiles/my_muduo.dir/InetAddress.cpp.o.d -o CMakeFiles/my_muduo.dir/InetAddress.cpp.o -c /home/han/Documents/muduo-core-client/src/InetAddress.cpp

CMakeFiles/my_muduo.dir/InetAddress.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/my_muduo.dir/InetAddress.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/han/Documents/muduo-core-client/src/InetAddress.cpp > CMakeFiles/my_muduo.dir/InetAddress.cpp.i

CMakeFiles/my_muduo.dir/InetAddress.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/my_muduo.dir/InetAddress.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/han/Documents/muduo-core-client/src/InetAddress.cpp -o CMakeFiles/my_muduo.dir/InetAddress.cpp.s

CMakeFiles/my_muduo.dir/Logger.cpp.o: CMakeFiles/my_muduo.dir/flags.make
CMakeFiles/my_muduo.dir/Logger.cpp.o: ../Logger.cpp
CMakeFiles/my_muduo.dir/Logger.cpp.o: CMakeFiles/my_muduo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/han/Documents/muduo-core-client/src/test/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building CXX object CMakeFiles/my_muduo.dir/Logger.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/my_muduo.dir/Logger.cpp.o -MF CMakeFiles/my_muduo.dir/Logger.cpp.o.d -o CMakeFiles/my_muduo.dir/Logger.cpp.o -c /home/han/Documents/muduo-core-client/src/Logger.cpp

CMakeFiles/my_muduo.dir/Logger.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/my_muduo.dir/Logger.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/han/Documents/muduo-core-client/src/Logger.cpp > CMakeFiles/my_muduo.dir/Logger.cpp.i

CMakeFiles/my_muduo.dir/Logger.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/my_muduo.dir/Logger.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/han/Documents/muduo-core-client/src/Logger.cpp -o CMakeFiles/my_muduo.dir/Logger.cpp.s

CMakeFiles/my_muduo.dir/Poller.cpp.o: CMakeFiles/my_muduo.dir/flags.make
CMakeFiles/my_muduo.dir/Poller.cpp.o: ../Poller.cpp
CMakeFiles/my_muduo.dir/Poller.cpp.o: CMakeFiles/my_muduo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/han/Documents/muduo-core-client/src/test/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Building CXX object CMakeFiles/my_muduo.dir/Poller.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/my_muduo.dir/Poller.cpp.o -MF CMakeFiles/my_muduo.dir/Poller.cpp.o.d -o CMakeFiles/my_muduo.dir/Poller.cpp.o -c /home/han/Documents/muduo-core-client/src/Poller.cpp

CMakeFiles/my_muduo.dir/Poller.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/my_muduo.dir/Poller.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/han/Documents/muduo-core-client/src/Poller.cpp > CMakeFiles/my_muduo.dir/Poller.cpp.i

CMakeFiles/my_muduo.dir/Poller.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/my_muduo.dir/Poller.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/han/Documents/muduo-core-client/src/Poller.cpp -o CMakeFiles/my_muduo.dir/Poller.cpp.s

CMakeFiles/my_muduo.dir/Socket.cpp.o: CMakeFiles/my_muduo.dir/flags.make
CMakeFiles/my_muduo.dir/Socket.cpp.o: ../Socket.cpp
CMakeFiles/my_muduo.dir/Socket.cpp.o: CMakeFiles/my_muduo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/han/Documents/muduo-core-client/src/test/CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "Building CXX object CMakeFiles/my_muduo.dir/Socket.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/my_muduo.dir/Socket.cpp.o -MF CMakeFiles/my_muduo.dir/Socket.cpp.o.d -o CMakeFiles/my_muduo.dir/Socket.cpp.o -c /home/han/Documents/muduo-core-client/src/Socket.cpp

CMakeFiles/my_muduo.dir/Socket.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/my_muduo.dir/Socket.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/han/Documents/muduo-core-client/src/Socket.cpp > CMakeFiles/my_muduo.dir/Socket.cpp.i

CMakeFiles/my_muduo.dir/Socket.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/my_muduo.dir/Socket.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/han/Documents/muduo-core-client/src/Socket.cpp -o CMakeFiles/my_muduo.dir/Socket.cpp.s

CMakeFiles/my_muduo.dir/TcpClient.cpp.o: CMakeFiles/my_muduo.dir/flags.make
CMakeFiles/my_muduo.dir/TcpClient.cpp.o: ../TcpClient.cpp
CMakeFiles/my_muduo.dir/TcpClient.cpp.o: CMakeFiles/my_muduo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/han/Documents/muduo-core-client/src/test/CMakeFiles --progress-num=$(CMAKE_PROGRESS_18) "Building CXX object CMakeFiles/my_muduo.dir/TcpClient.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/my_muduo.dir/TcpClient.cpp.o -MF CMakeFiles/my_muduo.dir/TcpClient.cpp.o.d -o CMakeFiles/my_muduo.dir/TcpClient.cpp.o -c /home/han/Documents/muduo-core-client/src/TcpClient.cpp

CMakeFiles/my_muduo.dir/TcpClient.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/my_muduo.dir/TcpClient.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/han/Documents/muduo-core-client/src/TcpClient.cpp > CMakeFiles/my_muduo.dir/TcpClient.cpp.i

CMakeFiles/my_muduo.dir/TcpClient.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/my_muduo.dir/TcpClient.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/han/Documents/muduo-core-client/src/TcpClient.cpp -o CMakeFiles/my_muduo.dir/TcpClient.cpp.s

CMakeFiles/my_muduo.dir/TcpConnection.cpp.o: CMakeFiles/my_muduo.dir/flags.make
CMakeFiles/my_muduo.dir/TcpConnection.cpp.o: ../TcpConnection.cpp
CMakeFiles/my_muduo.dir/TcpConnection.cpp.o: CMakeFiles/my_muduo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/han/Documents/muduo-core-client/src/test/CMakeFiles --progress-num=$(CMAKE_PROGRESS_19) "Building CXX object CMakeFiles/my_muduo.dir/TcpConnection.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/my_muduo.dir/TcpConnection.cpp.o -MF CMakeFiles/my_muduo.dir/TcpConnection.cpp.o.d -o CMakeFiles/my_muduo.dir/TcpConnection.cpp.o -c /home/han/Documents/muduo-core-client/src/TcpConnection.cpp

CMakeFiles/my_muduo.dir/TcpConnection.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/my_muduo.dir/TcpConnection.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/han/Documents/muduo-core-client/src/TcpConnection.cpp > CMakeFiles/my_muduo.dir/TcpConnection.cpp.i

CMakeFiles/my_muduo.dir/TcpConnection.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/my_muduo.dir/TcpConnection.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/han/Documents/muduo-core-client/src/TcpConnection.cpp -o CMakeFiles/my_muduo.dir/TcpConnection.cpp.s

CMakeFiles/my_muduo.dir/TcpServer.cpp.o: CMakeFiles/my_muduo.dir/flags.make
CMakeFiles/my_muduo.dir/TcpServer.cpp.o: ../TcpServer.cpp
CMakeFiles/my_muduo.dir/TcpServer.cpp.o: CMakeFiles/my_muduo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/han/Documents/muduo-core-client/src/test/CMakeFiles --progress-num=$(CMAKE_PROGRESS_20) "Building CXX object CMakeFiles/my_muduo.dir/TcpServer.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/my_muduo.dir/TcpServer.cpp.o -MF CMakeFiles/my_muduo.dir/TcpServer.cpp.o.d -o CMakeFiles/my_muduo.dir/TcpServer.cpp.o -c /home/han/Documents/muduo-core-client/src/TcpServer.cpp

CMakeFiles/my_muduo.dir/TcpServer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/my_muduo.dir/TcpServer.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/han/Documents/muduo-core-client/src/TcpServer.cpp > CMakeFiles/my_muduo.dir/TcpServer.cpp.i

CMakeFiles/my_muduo.dir/TcpServer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/my_muduo.dir/TcpServer.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/han/Documents/muduo-core-client/src/TcpServer.cpp -o CMakeFiles/my_muduo.dir/TcpServer.cpp.s

CMakeFiles/my_muduo.dir/Thread.cpp.o: CMakeFiles/my_muduo.dir/flags.make
CMakeFiles/my_muduo.dir/Thread.cpp.o: ../Thread.cpp
CMakeFiles/my_muduo.dir/Thread.cpp.o: CMakeFiles/my_muduo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/han/Documents/muduo-core-client/src/test/CMakeFiles --progress-num=$(CMAKE_PROGRESS_21) "Building CXX object CMakeFiles/my_muduo.dir/Thread.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/my_muduo.dir/Thread.cpp.o -MF CMakeFiles/my_muduo.dir/Thread.cpp.o.d -o CMakeFiles/my_muduo.dir/Thread.cpp.o -c /home/han/Documents/muduo-core-client/src/Thread.cpp

CMakeFiles/my_muduo.dir/Thread.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/my_muduo.dir/Thread.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/han/Documents/muduo-core-client/src/Thread.cpp > CMakeFiles/my_muduo.dir/Thread.cpp.i

CMakeFiles/my_muduo.dir/Thread.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/my_muduo.dir/Thread.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/han/Documents/muduo-core-client/src/Thread.cpp -o CMakeFiles/my_muduo.dir/Thread.cpp.s

CMakeFiles/my_muduo.dir/Timer.cpp.o: CMakeFiles/my_muduo.dir/flags.make
CMakeFiles/my_muduo.dir/Timer.cpp.o: ../Timer.cpp
CMakeFiles/my_muduo.dir/Timer.cpp.o: CMakeFiles/my_muduo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/han/Documents/muduo-core-client/src/test/CMakeFiles --progress-num=$(CMAKE_PROGRESS_22) "Building CXX object CMakeFiles/my_muduo.dir/Timer.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/my_muduo.dir/Timer.cpp.o -MF CMakeFiles/my_muduo.dir/Timer.cpp.o.d -o CMakeFiles/my_muduo.dir/Timer.cpp.o -c /home/han/Documents/muduo-core-client/src/Timer.cpp

CMakeFiles/my_muduo.dir/Timer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/my_muduo.dir/Timer.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/han/Documents/muduo-core-client/src/Timer.cpp > CMakeFiles/my_muduo.dir/Timer.cpp.i

CMakeFiles/my_muduo.dir/Timer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/my_muduo.dir/Timer.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/han/Documents/muduo-core-client/src/Timer.cpp -o CMakeFiles/my_muduo.dir/Timer.cpp.s

CMakeFiles/my_muduo.dir/Timestamp.cpp.o: CMakeFiles/my_muduo.dir/flags.make
CMakeFiles/my_muduo.dir/Timestamp.cpp.o: ../Timestamp.cpp
CMakeFiles/my_muduo.dir/Timestamp.cpp.o: CMakeFiles/my_muduo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/han/Documents/muduo-core-client/src/test/CMakeFiles --progress-num=$(CMAKE_PROGRESS_23) "Building CXX object CMakeFiles/my_muduo.dir/Timestamp.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/my_muduo.dir/Timestamp.cpp.o -MF CMakeFiles/my_muduo.dir/Timestamp.cpp.o.d -o CMakeFiles/my_muduo.dir/Timestamp.cpp.o -c /home/han/Documents/muduo-core-client/src/Timestamp.cpp

CMakeFiles/my_muduo.dir/Timestamp.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/my_muduo.dir/Timestamp.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/han/Documents/muduo-core-client/src/Timestamp.cpp > CMakeFiles/my_muduo.dir/Timestamp.cpp.i

CMakeFiles/my_muduo.dir/Timestamp.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/my_muduo.dir/Timestamp.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/han/Documents/muduo-core-client/src/Timestamp.cpp -o CMakeFiles/my_muduo.dir/Timestamp.cpp.s

# Object files for target my_muduo
my_muduo_OBJECTS = \
"CMakeFiles/my_muduo.dir/Acceptor.cpp.o" \
"CMakeFiles/my_muduo.dir/Buffer.cpp.o" \
"CMakeFiles/my_muduo.dir/Channel.cpp.o" \
"CMakeFiles/my_muduo.dir/Connector.cpp.o" \
"CMakeFiles/my_muduo.dir/CurrentThread.cpp.o" \
"CMakeFiles/my_muduo.dir/DefaultPoller.cpp.o" \
"CMakeFiles/my_muduo.dir/EPollPoller.cpp.o" \
"CMakeFiles/my_muduo.dir/EventLoop.cpp.o" \
"CMakeFiles/my_muduo.dir/EventLoopThread.cpp.o" \
"CMakeFiles/my_muduo.dir/EventLoopThreadPool.cpp.o" \
"CMakeFiles/my_muduo.dir/HttpContext.cpp.o" \
"CMakeFiles/my_muduo.dir/HttpResponse.cpp.o" \
"CMakeFiles/my_muduo.dir/HttpServer.cpp.o" \
"CMakeFiles/my_muduo.dir/InetAddress.cpp.o" \
"CMakeFiles/my_muduo.dir/Logger.cpp.o" \
"CMakeFiles/my_muduo.dir/Poller.cpp.o" \
"CMakeFiles/my_muduo.dir/Socket.cpp.o" \
"CMakeFiles/my_muduo.dir/TcpClient.cpp.o" \
"CMakeFiles/my_muduo.dir/TcpConnection.cpp.o" \
"CMakeFiles/my_muduo.dir/TcpServer.cpp.o" \
"CMakeFiles/my_muduo.dir/Thread.cpp.o" \
"CMakeFiles/my_muduo.dir/Timer.cpp.o" \
"CMakeFiles/my_muduo.dir/Timestamp.cpp.o"

# External object files for target my_muduo
my_muduo_EXTERNAL_OBJECTS =

../lib/libmy_muduo.so: CMakeFiles/my_muduo.dir/Acceptor.cpp.o
../lib/libmy_muduo.so: CMakeFiles/my_muduo.dir/Buffer.cpp.o
../lib/libmy_muduo.so: CMakeFiles/my_muduo.dir/Channel.cpp.o
../lib/libmy_muduo.so: CMakeFiles/my_muduo.dir/Connector.cpp.o
../lib/libmy_muduo.so: CMakeFiles/my_muduo.dir/CurrentThread.cpp.o
../lib/libmy_muduo.so: CMakeFiles/my_muduo.dir/DefaultPoller.cpp.o
../lib/libmy_muduo.so: CMakeFiles/my_muduo.dir/EPollPoller.cpp.o
../lib/libmy_muduo.so: CMakeFiles/my_muduo.dir/EventLoop.cpp.o
../lib/libmy_muduo.so: CMakeFiles/my_muduo.dir/EventLoopThread.cpp.o
../lib/libmy_muduo.so: CMakeFiles/my_muduo.dir/EventLoopThreadPool.cpp.o
../lib/libmy_muduo.so: CMakeFiles/my_muduo.dir/HttpContext.cpp.o
../lib/libmy_muduo.so: CMakeFiles/my_muduo.dir/HttpResponse.cpp.o
../lib/libmy_muduo.so: CMakeFiles/my_muduo.dir/HttpServer.cpp.o
../lib/libmy_muduo.so: CMakeFiles/my_muduo.dir/InetAddress.cpp.o
../lib/libmy_muduo.so: CMakeFiles/my_muduo.dir/Logger.cpp.o
../lib/libmy_muduo.so: CMakeFiles/my_muduo.dir/Poller.cpp.o
../lib/libmy_muduo.so: CMakeFiles/my_muduo.dir/Socket.cpp.o
../lib/libmy_muduo.so: CMakeFiles/my_muduo.dir/TcpClient.cpp.o
../lib/libmy_muduo.so: CMakeFiles/my_muduo.dir/TcpConnection.cpp.o
../lib/libmy_muduo.so: CMakeFiles/my_muduo.dir/TcpServer.cpp.o
../lib/libmy_muduo.so: CMakeFiles/my_muduo.dir/Thread.cpp.o
../lib/libmy_muduo.so: CMakeFiles/my_muduo.dir/Timer.cpp.o
../lib/libmy_muduo.so: CMakeFiles/my_muduo.dir/Timestamp.cpp.o
../lib/libmy_muduo.so: CMakeFiles/my_muduo.dir/build.make
../lib/libmy_muduo.so: CMakeFiles/my_muduo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/han/Documents/muduo-core-client/src/test/CMakeFiles --progress-num=$(CMAKE_PROGRESS_24) "Linking CXX shared library ../lib/libmy_muduo.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/my_muduo.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/my_muduo.dir/build: ../lib/libmy_muduo.so
.PHONY : CMakeFiles/my_muduo.dir/build

CMakeFiles/my_muduo.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/my_muduo.dir/cmake_clean.cmake
.PHONY : CMakeFiles/my_muduo.dir/clean

CMakeFiles/my_muduo.dir/depend:
	cd /home/han/Documents/muduo-core-client/src/test && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/han/Documents/muduo-core-client/src /home/han/Documents/muduo-core-client/src /home/han/Documents/muduo-core-client/src/test /home/han/Documents/muduo-core-client/src/test /home/han/Documents/muduo-core-client/src/test/CMakeFiles/my_muduo.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/my_muduo.dir/depend

