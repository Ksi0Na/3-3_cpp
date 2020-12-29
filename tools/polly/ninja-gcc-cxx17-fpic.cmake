# Copyright (c) 2016-2020, Ruslan Baratov, David Hirvonen, Rahul Sheth
# All rights reserved.

if(DEFINED POLLY_NINJA_GCC_CXX17_FPIC_CMAKE_)
  return()
else()
  set(POLLY_NINJA_GCC_CXX17_FPIC_CMAKE_ 1)
endif()

include("${CMAKE_CURRENT_LIST_DIR}/utilities/polly_init.cmake")

polly_init(
    "gcc / c++17 support / Position-Independent Code"
    "Ninja"
)

include("${CMAKE_CURRENT_LIST_DIR}/utilities/polly_common.cmake")

include("${CMAKE_CURRENT_LIST_DIR}/compiler/gcc.cmake")
include("${CMAKE_CURRENT_LIST_DIR}/flags/cxx17.cmake")
include("${CMAKE_CURRENT_LIST_DIR}/flags/fpic.cmake")
