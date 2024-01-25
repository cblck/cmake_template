set(PROJ_EXEC1 "intro")

# Disable C++20 module support until CMake, LLVM, and Ninja all get along.
if(CMAKE_VERSION VERSION_GREATER 3.27.2)
  if(CMAKE_VERSION VERSION_LESS 3.28.2)
    message(STATUS "CMake NOT scanning for C++20 modules.")
    set(CXX_SCAN_FOR_MODULES FALSE)
  endif()
endif()

#directories under src that will be added as subdirectories to the project
set(MY_PROJECT_SUBDIRECTORIES "ftxui_sample;sample_library")

set(DEFAULT_EXEC ${PROJ_EXEC1} CACHE STRING "Default executable to build")

#set(MY_PROJECT_TARGETS "${PROJ_EXEC1} ${SERVER_APP}")
set(MY_PROJECT_TARGETS "${PROJ_EXEC1}")

MESSAGE(STATUS "MY PROJECT TARGETS = ${MY_PROJECT_TARGETS}")
