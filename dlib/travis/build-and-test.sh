#!/usr/bin/env bash
# Exit if anything fails.
set -eux

# check the version
g++ --version
cmake --version

# build dlib and tests
mkdir build
cd build
if [ "$VARIANT" = "test" ]; then
  ../cmake/bin/cmake ../dlib/test
  ../cmake/bin/cmakee --build . --target dtest -- -j 4
  dlib/dtest/dtest --runall
fi
if [ "$VARIANT" = "examples" ]; then
  ../cmake/bin/cmake ../examples
  ../cmake/bin/cmakee --build . -- -j 4
fi

cd ..