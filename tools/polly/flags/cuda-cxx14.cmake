# Copyright (c) 2020, Rahul Sheth
# All rights reserved.

if(DEFINED POLLY_FLAGS_CUDA_CXX14_CMAKE)
  return()
else()
  set(POLLY_FLAGS_CUDA_CXX14_CMAKE 1)
endif()

# Set CMAKE_CUDA_STANDARD to cache to override project local value if present.
# FORCE added in case CMAKE_CUDA_STANDARD already set in cache
# (e.g. set before 'project' by user).
set(CMAKE_CUDA_STANDARD 14 CACHE STRING "CUDA C++ Standard (toolchain)" FORCE)
set(CMAKE_CUDA_STANDARD_REQUIRED YES CACHE BOOL "CUDA C++ Standard required" FORCE)
set(CMAKE_CUDA_EXTENSIONS NO CACHE BOOL "CUDA C++ Standard extensions" FORCE)
