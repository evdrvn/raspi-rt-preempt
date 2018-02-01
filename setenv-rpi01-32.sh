#!/bin/sh
export CURRENT=$(cd $(dirname $0) && pwd)
export ARCH=arm
export CROSS_COMPILE=$CURRENT/tools/arm-bcm2708/gcc-linaro-arm-linux-gnueabihf-raspbian/bin/arm-linux-gnueabihf- 
export INSTALL_MOD_PATH=$CURRENT/rtkernel
export KERNEL=kernel
export KCONFIG=config.rpi01-32

