#!/usr/bin/env bash
# Exit if anything fails.
set -eux

g++ --version
cmake --version

mkdir build
cd dlib
cmake ../dlib/test
cmake --build . --target dtest
dlib/test/dtest