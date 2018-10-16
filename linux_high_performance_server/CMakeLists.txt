cmake_minimum_required (VERSION 3.5)
project (webserver)
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_COMPILER "g++")
set(CXX_FLAGS -g -wall)

set(EXECUTABLE_OUTPUT_PATH ${PROJECT_BINARY_DIR}/../bin)

# gdb debug options
set(CMAKE_BUILD_TYPE "Debug")
set(CMAKE_CXX_FLAGS_DEBUG "$ENV{CXXFLAGS} -O0 -Wall -g2 -ggdb")
set(CMAKE_CXX_FLAGS_RELEASE "$ENV{CXXFLAGS} -O3 -Wall")

# aux_source_directory(. sourceList)
# add_executable(cgi cgi.cpp processpool.h)
# add_executable(webserver web_server.cpp threadpool.h locker.h http_conn.h http_conn.cpp)
# target_link_libraries(webserver pthread)
add_executable(pressure_test pressure_test.cpp)



