cmake_minimum_required(VERSION 3.10) 
project(CplusplusProgramming)
set(CMAKE_CXX_STANDARD 14)

set(CMAKE_LINK_LIBS)
set(SOURCE_FILES main.cpp)
include(.script/boost.cmake)

add_executable(CplusplusProgramming ${SOURCE_FILES})

message("cmake linking libs has ${CMAKE_LINK_LIBS}")
target_link_libraries(CplusplusProgramming PUBLIC ${CMAKE_LINK_LIBS})

#include(cmake/CPM.cmake)
#CPMAddPackage(
  #NAME Boost
  #VERSION 1.78.0
  #GITHUB_REPOSITORY "boostorg/boost"
  #GIT_TAG "boost-1.78.0"
#)

