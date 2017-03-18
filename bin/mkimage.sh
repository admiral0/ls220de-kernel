#!/bin/sh

cat linux-source/arch/arm/boot/zImage linux-source/arch/arm/boot/dts/armada-370-ls220de.dtb > linux-source/arch/arm/boot/zImage.dtb
mkdir -p out
mkimage -A arm -O linux -T kernel -C none -a 0x00008000 -e 0x00008000 -n "Linux-LS220DE" -d linux-source/arch/arm/boot/zImage.dtb out/uImage.buffalo
