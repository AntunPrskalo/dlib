#!/usr/bin/env bash

mkdir build
cd dlib
cmake ../dlib/test
cmake --build . --target dtest
