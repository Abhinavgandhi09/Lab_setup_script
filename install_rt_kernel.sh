#!/bin/bash


# This script compiles and installs the rt kernel

cd $HOME &&
tar xf linux-5.4.52.tar &&
cd linux-5.4.52 &&
patch -p1 < ../patch-5.4.52-rt31.patch &&

make oldconfig &&

echo "Follow instructions on https://frankaemika.github.io/docs/installation_linux.html";
echo "Do not use fakeroot, use make..";
echo "the make process will take sometime..";