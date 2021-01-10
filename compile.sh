#!/usr/bin/sh
cd `dirname $0`

make clean
auto/configure --prefix="release" --with-debug
sed -i 's/ -O / -O0 /g' objs/Makefile
make -j 4
