cmake_minimum_required(VERSION 3.13)  # CMake version check
project(CplusplusProgramming)               # Create project "simple_example"
set(CMAKE_CXX_STANDARD 14)            # Enable c++14 standard

include(cmake/CPM.cmake)

message("foo is ${foo}")

# Add main.cpp file of project root directory as source file
set(SOURCE_FILES main.cpp)

CPMAddPackage(
    NAME spdlog
    GITHUB_REPOSITORY gabime/spdlog
    VERSION 1.7.0)

# Add executable target with source files listed in SOURCE_FILES variable
add_executable(CplusplusProgramming ${SOURCE_FILES})

target_link_libraries(CplusplusProgramming spdlog)
