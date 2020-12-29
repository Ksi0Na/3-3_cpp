# Copyright (c) 2013-2020, Ruslan Baratov, Rahul Sheth
# All rights reserved.

if(DEFINED POLLY_GCC_9_CXX17_GNU_FPIC_CMAKE)
  return()
else()
  set(POLLY_GCC_9_CXX17_GNU_FPIC_CMAKE 1)
endif()

include("${CMAKE_CURRENT_LIST_DIR}/utilities/polly_init.cmake")

polly_init(
    "gcc 9 / c++17 support / GNU / Position-Independent Code"
    "Unix Makefiles"
)

include("${CMAKE_CURRENT_LIST_DIR}/utilities/polly_common.cmake")

include("${CMAKE_CURRENT_LIST_DIR}/compiler/gcc-9.cmake")
include("${CMAKE_CURRENT_LIST_DIR}/flags/cxx17-gnu.cmake")
include("${CMAKE_CURRENT_LIST_DIR}/flags/fpic.cmake")
