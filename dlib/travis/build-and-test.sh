#!/usr/bin/env bash
# Exit if anything fails.
set -eux

# check versions
cmake --version
gcc --version

mkdir build
cd dlib
cmake ../dlib/test
cmake --build . --target dtest
dlib/test/dtest