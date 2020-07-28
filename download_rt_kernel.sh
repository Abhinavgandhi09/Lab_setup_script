#!/bin/bash

# This script installs rt-kernel for communicating with robot hw
#### Not required for simulation ####

cd $HOME;
sudo apt-get install build-essential bc curl ca-certificates fakeroot gnupg2 libssl-dev lsb-release libelf-dev bison flex &&

# Obtaining upgraded kernel and it's rt patch
curl -SLO https://www.kernel.org/pub/linux/kernel/v5.x/linux-5.4.52.tar.xz &&
curl -SLO https://www.kernel.org/pub/linux/kernel/v5.x/linux-5.4.52.tar.sign &&
curl -SLO https://www.kernel.org/pub/linux/kernel/projects/rt/5.4/patch-5.4.52-rt31.patch.xz &&
curl -SLO https://www.kernel.org/pub/linux/kernel/projects/rt/5.4/patch-5.4.52-rt31.patch.sign &&

# Decompressing the kernel and its rt patch
xz -d linux-5.4.52.tar.xz &&
xz -d patch-5.4.52-rt31.patch.xz &&

gpg2 --verify linux-5.4.52.tar.sign &&
gpg2 --verify patch-5.4.52-rt31.patch.sign &&

### Use this to recieve keys after key ID is found
#gpg2  --keyserver hkp://keys.gnupg.net --recv-keys 0xkey ID
echo "Please verify the downloads using keys";