#!/bin/sh
mkdir $INSTALL_MOD_PATH/boot
cd linux
./scripts/mkknlimg ./arch/arm/boot/zImage $INSTALL_MOD_PATH/boot/$KERNEL.img
cp ./arch/arm/boot/dts/*.dtb $INSTALL_MOD_PATH/boot/
cp -r ./arch/arm/boot/dts/overlays $INSTALL_MOD_PATH/boot
cd ..
tar czf rtkernel.tgz rtkernel deploy.sh
