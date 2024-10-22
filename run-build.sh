#!/bin/bash

rm -rf build
rm -rf compiled-static/include
rm -rf compiled-static/lib64
mkdir build
cd build

cmake .. -DENABLE_PUSH=OFF -DENABLE_COMPRESSION=OFF

cmake --build . --parallel 4

#ctest -V

cmake --install . --prefix ../compiled-static
