#!/bin/bash

rm -rf _build
rm -rf compiled-static/include
rm -rf compiled-static/lib64
mkdir _build
cd _build

cmake .. -DENABLE_PUSH=OFF -DENABLE_COMPRESSION=OFF

cmake --build . --parallel 4

#ctest -V

cmake --install . --prefix ../compiled-static
