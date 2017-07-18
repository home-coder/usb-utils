#!/bin/bash
MGCC=/opt/toolchain/mstar/linaro-aarch64_linux-2014.09_843419-patched/bin/aarch64-linux-gnu-gcc
./configure CC=$MGCC  --host=arm-linux --prefix=$PWD/_install  
make && make install

#---------x86平台----------
./configure  --prefix=$PWD/_install86
make && make install
