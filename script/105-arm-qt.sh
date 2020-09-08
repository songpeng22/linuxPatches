#!/bin/bash

sudo dpkg --add-architecture armhf
sudo dpkg --print-foreign-architectures
read -p "Press enter to continue , cp sources.list"
sudo cp ../overlay/etc/apt/sources.list.ustc /etc/apt/sources.list
sudo apt update
read -p "Press enter to continue , install arm related apps "

sudo apt install binutils-arm-linux-gnueabihf gcc-arm-linux-gnueabihf g++-arm-linux-gnueabihf -y
sudo apt install libxkbcommon-x11-dev:armhf libxkbcommon-dev:armhf libxcb-xkb-dev:armhf libx11-xcb-dev:armhf libgles2-mesa-dev:armhf -y
read -p "Press enter to continue"
