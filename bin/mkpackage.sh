#!/bin/bash

export ARCH=arm
export CROSS_COMPILE=`pwd`/toolchain/bin/arm-linux-gnueabihf-

mkdir -p pkg/boot
pushd linux-source
cp arch/arm/boot/zImage ../pkg/boot/vmlinuz-4.10.3-ls220de
make INSTALL_MOD_PATH=../pkg/ modules_install
popd
pushd pkg
tar czvf ../linux-ls220de.tar.gz .
popd
