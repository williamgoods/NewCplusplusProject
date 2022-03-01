include(ExternalProject)

# add pthread support of boost asio
list(APPEND CMAKE_LINK_LIBS "pthread")

SET(Boost_USE_STATIC_LIBS ON)
SET(Boost_USE_MULTITHREAD ON)

SET(ROOT_DIR ${CMAKE_SOURCE_DIR})
SET(ROOT_STATIC "${CMAKE_SOURCE_DIR}/.static_libs")

# install boost static library into .static_libs directory
set(BOOST_INSTALL_LOCATION ${ROOT_STATIC}/boost_lib)

execute_process(
    COMMAND bash "${ROOT_DIR}/.script/install.sh" boost ${BOOST_INSTALL_LOCATION}    
)

#set(BOOST_ROOT_STATIC "${ROOT_STATIC}/boost_lib/src/boost")
set(BOOST_STATIC_LIB "${BOOST_INSTALL_LOCATION}/lib")
set(BOOST_STATIC_INCLUDE "${BOOST_INSTALL_LOCATION}/include")

include_directories(${BOOST_STATIC_INCLUDE})
link_directories(${BOOST_STATIC_LIB})
