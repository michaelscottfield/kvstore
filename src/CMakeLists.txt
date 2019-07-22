cmake_minimum_required(VERSION 2.8)
project(kv_store)

set(CMAKE_CXX_STANDARD 14)
set(SRC_BASE ${PROJECT_SOURCE_DIR})
SET(SRC_CPP ${SRC_BASE}/file_io.cc
        ${SRC_BASE}/data_mgr.cc
        ${SRC_BASE}/meta_mgr.cc
        ${SRC_BASE}/kv_store.cc
        ${SRC_BASE}/kv_intf.cc
        )
#include_directories(sparsepp third_party src)
INCLUDE_DIRECTORIES(${SRC_BASE}/../third_party)
# add_executable(EngineKVStore main.cpp src/kv_intf.cc src/kv_store.h src/meta_mgr.h src/file_io.h src/file_io.cc src/meta_mgr.cc src/data_mgr.h src/data_mgr.cc)
ADD_LIBRARY(${PROJECT_NAME} SHARED ${SRC_CPP})
