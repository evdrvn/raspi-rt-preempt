#!/bin/sh
cd linux
cp ../$KCONFIG ./.config
make zImage modules dtbs -j4
