#!/bin/sh

git clone --depth 1 --branch v1.2.3 git://git.musl-libc.org/musl source
mkdir package
cd source
./configure --prefix=$PWD/../package --disable-static
make -j $(nproc)
make -j $(nproc) install