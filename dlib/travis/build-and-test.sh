#!/usr/bin/env bash
# Exit if anything fails.
set -eux

g++ --version
cmake --version

mkdir build
cd dlib
/usr/bin/cmake ../dlib/test
/usr/bin/cmake --build . --target dtest
dlib/test/dtest