#!/usr/bin/env bash

cmake --version
mkdir build
cd dlib
cmake ../dlib/test
cmake --build . --target dtest
