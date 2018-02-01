#!/bin/sh
cd linux
cp ../$KCONFIG ./.config
make zImage modules dtbs -j2
make modules_install
