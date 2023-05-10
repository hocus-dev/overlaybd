include(FetchContent)
set(FETCHCONTENT_QUIET false)

FetchContent_Declare(
  tcmu
  GIT_REPOSITORY https://github.com/hocus-dev/photon-libtcmu.git
  GIT_TAG hocus
)

if(BUILD_TESTING)
  set(BUILD_TESTING 0)
  FetchContent_MakeAvailable(tcmu)
  set(BUILD_TESTING 1)
else()
  FetchContent_MakeAvailable(tcmu)
endif()
set(TCMU_INCLUDE_DIR ${tcmu_SOURCE_DIR}/)
