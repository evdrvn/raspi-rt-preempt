#!/bin/sh
git submodule update -i --depth 1
wget https://www.kernel.org/pub/linux/kernel/projects/rt/5.4/older/patch-5.4.74-rt41.patch.gz
cp patch-5.4.74-rt41.patch.gz ./linux
cd linux
zcat patch-5.4.74-rt41.patch.gz | patch -p1
