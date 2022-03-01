cmake_minimum_required(VERSION 3.13)  # CMake version check
project(CplusplusProgramming)               # Create project "simple_example"
set(CMAKE_CXX_STANDARD 14)            # Enable c++14 standard

# Add main.cpp file of project root directory as source file
set(SOURCE_FILES main.cpp)
include(.script/boost.cmake)

#include(cmake/CPM.cmake)
#CPMAddPackage(
  #NAME Boost
  #VERSION 1.78.0
  #GITHUB_REPOSITORY "boostorg/boost"
  #GIT_TAG "boost-1.78.0"
#)

#SET(Boost_USE_STATIC_LIBS ON)
#SET(Boost_USE_MULTITHREAD ON)

#SET(ROOT_DIR ${CMAKE_SOURCE_DIR})
#SET(ROOT_STATIC "${CMAKE_SOURCE_DIR}/static_libs")

#set(BOOST_ROOT_STATIC "${ROOT_STATIC}/boost_lib")
#set(BOOST_STATIC_LIB "${BOOST_ROOT_STATIC}/lib")
#set(BOOST_STATIC_INCLUDE "${BOOST_ROOT_STATIC}/include")

#include_directories(${BOOST_STATIC_INCLUDE})
#link_directories(${BOOST_STATIC_LIB})

#SET(USED_LIBS ${Boost_SYSTEM_LIBRARY} ${Boost_THREAD_LIBRARY} ${Boost_REGEX_LIBRARY})

#message("boost system library: ${Boost_SYSTEM_LIBRARY}")

# Add executable target with source files listed in SOURCE_FILES variable
add_executable(CplusplusProgramming ${SOURCE_FILES})

#TARGET_LINK_LIBRARIES(CplusplusProgramming ${USED_LIBS})

#target_link_libraries(CplusplusProgramming PRIVATE Boost::asio)
