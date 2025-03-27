#!/bin/bash

set -e

if [ ! -d "$(pwd)/build" ]; then
    mkdir "$(pwd)/build"
fi

rm -rf "$(pwd)/build"/*

cd "$(pwd)/build" &&
    cmake .. &&
    make

cd ..

if [ ! -d "/usr/include/mymuduo" ]; then
    sudo mkdir -p /usr/include/mymuduo
fi

for header in `ls *.h`
do
    sudo cp $header /usr/include/mymuduo
done

sudo cp "$(pwd)/lib/libmy_muduo.so" /usr/lib

sudo ldconfig