cmake_minimum_required(VERSION 3.13)  # CMake version check

set(CPM_DOWNLOAD_VERSION 0.35.0)
set(CPM_DOWNLOAD_LOCATION "${CMAKE_BINARY_DIR}/../cmake/CPM.cmake")

if(NOT (EXISTS ${CPM_DOWNLOAD_LOCATION}))
    message(STATUS "Downloading CPM.cmake to ${CPM_DOWNLOAD_LOCATION}")
    file(DOWNLOAD https://github.com/cpm-cmake/CPM.cmake/releases/download/v${CPM_DOWNLOAD_VERSION}/CPM.cmake ${CPM_DOWNLOAD_LOCATION})
endif()

# include("${CMAKE_CURRENT_LIST_DIR}/../cmake/CPM.cmake")

