#!/bin/sh
export CURRENT=$(cd $(dirname $BASH_SOURCE); pwd)
export ARCH=arm
export CROSS_COMPILE=$CURRENT/tools/arm-bcm2708/gcc-linaro-arm-linux-gnueabihf-raspbian-x64/bin/arm-linux-gnueabihf- 
export INSTALL_MOD_PATH=$CURRENT/rtkernel
export KERNEL=kernel7
export KCONFIG=config.rpi23-32

