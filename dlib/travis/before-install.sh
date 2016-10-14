#!/usr/bin/env bash

# Exit if anything fails.
set -eux

HERE=$PW


mkdir -v $HOME/bin
for g in gcc g++ gcov gcc-ar gcc-nm gcc-ranlib
do
  test -x $( type -p ${g}-$GCC_VER )
  ln -sv $(type -p ${g}-$GCC_VER) $HOME/bin/${g}
done

if [[ ! -x cmake/bin/cmake && -d cmake ]]; then
    rm -fr cmake
fi
if [[ ! -d cmake && ${BUILD_SYSTEM:-} == cmake ]]; then
  CMAKE_URL="http://www.cmake.org/files/v3.5/cmake-3.5.2-Linux-x86_64.tar.gz"
  mkdir cmake && wget --no-check-certificate -O - ${CMAKE_URL} | tar --strip-components=1 -xz -C cmake
fi


# NOTE, changed from PWD -> HOME
export PATH=$HOME/bin:$PATH

