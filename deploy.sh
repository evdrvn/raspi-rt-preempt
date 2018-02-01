#!/bin/sh
rm -r /lib/firmware/
rm -r /boot/overlays/
cd rtkernel/boot
cp -rd * /boot/
cd ../lib
cp -dr * /lib/
