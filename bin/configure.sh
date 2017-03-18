#!/bin/bash

export ARCH=arm
export CROSS_COMPILE=`pwd`/toolchain/bin/arm-linux-gnueabihf-

pushd linux-source
make nconfig
popd
