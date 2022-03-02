include(ExternalProject)

SET(ROOT_DIR ${CMAKE_SOURCE_DIR})
SET(ROOT_STATIC "${ROOT_DIR}/.static_libs")

# install boost static library into .static_libs directory
set(JSON_INSTALL_LOCATION ${ROOT_STATIC}/json_lib)

execute_process(
	COMMAND bash "${ROOT_DIR}/.script/install.sh" json ${JSON_INSTALL_LOCATION}
)

set(JSON_STATIC_INCLUDE "${JSON_INSTALL_LOCATION}/include")

include_directories(${JSON_STATIC_INCLUDE})
