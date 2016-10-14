#!/usr/bin/env bash


if [[ ! -x cmake/bin/cmake && -d cmake ]]; then
    rm -fr cmake
fi
if [[ ! -d cmake && ${BUILD_SYSTEM:-} == cmake ]]; then
  CMAKE_URL="http://www.cmake.org/files/v3.5/cmake-3.5.2-Linux-x86_64.tar.gz"
  mkdir cmake && wget --no-check-certificate -O - ${CMAKE_URL} | tar --strip-components=1 -xz -C cmake
fi

