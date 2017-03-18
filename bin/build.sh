#!/bin/bash

export ARCH=arm
export CROSS_COMPILE=`pwd`/toolchain/bin/arm-linux-gnueabihf-

pushd linux-source
make -j`nproc` zImage modules armada-370-ls421de.dtb armada-370-ls220de.dtb
popd
