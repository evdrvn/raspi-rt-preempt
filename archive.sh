#!/bin/sh
rm -rf $INSTALL_MOD_PATH
mkdir $INSTALL_MOD_PATH
mkdir $INSTALL_MOD_PATH/boot
mkdir $INSTALL_MOD_PATH/lib
mkdir $INSTALL_MOD_PATH/lib/firmware
cd linux
make modules_install
cp ./arch/arm/boot/zImage $INSTALL_MOD_PATH/boot/$KERNEL.img
cp ./arch/arm/boot/dts/*.dtb $INSTALL_MOD_PATH/boot/
cp -r ./arch/arm/boot/dts/overlays $INSTALL_MOD_PATH/boot
cp -r ../firmware-nonfree/* $INSTALL_MOD_PATH/lib/firmware
cd ..
tar czf rtkernel.tgz rtkernel deploy.sh
