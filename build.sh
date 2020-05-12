#!/bin/bash

export ARCH=arm64
export CROSS_COMPILE=/home/saintno/Desktop/Kernel/linaro-toolchain-latest-latest-7/bin/aarch64-linux-gnu-
export CROSS_COMPILE_ARM32=/home/saintno/Desktop/Kernel/UBERTC-arm-linux-androideabi-4.9-326a1d868723/bin/arm-linux-androideabi-
mkdir output

make -C $(pwd) O=output sirius_defconfig
make -j4 -C $(pwd) O=output
