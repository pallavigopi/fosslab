#!/usr/bin/bash

#download via browser or use wget
wget https://www.kernel.org/pub/linux/kernel/v3.x/linux-4.16.tar.xz

#untar file for compiling it
tar -xvf linux-4.16.1.tar.xz

#change directory
cd linux-4.16.1

#make the configuration file
make menuconfig

#making the kernel and modules
make 
make modules
#installing kernel modules
sudo make modules_install
#installing the new kernel
sudo make install
