#!/bin/sh
git submodule update -i
wget https://www.kernel.org/pub/linux/kernel/projects/rt/4.9/older/patch-4.9.76-rt61.patch.gz
cp patch-4.9.76-rt61.patch.gz ./linux
cd linux
zcat patch-4.9.76-rt61.patch.gz | patch -p1
