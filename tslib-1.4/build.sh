#!/bin/sh

cd tslib

if [ "$1" == "clean" ]; then
	./autogen-clean.sh
	cd -
	rm -rf out/
else
	./autogen.sh
	./configure --host=arm-linux-gnueabihf ac_cv_func_malloc_0_nonnull=yes CC=arm-linux-gnueabihf-gcc CXX=arm-linux-gnueabihf-g++ --prefix=$(pwd)/../out/
	make -j4
	make install
	cd -
fi
sync



