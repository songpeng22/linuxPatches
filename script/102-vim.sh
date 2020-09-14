#!/bin/bash
sudo apt install ctags
sudo cp -vr ../overlay/home/peng/.vim/ ~/
sudo cp -v  ../overlay/home/peng/.vimrc ~/.vimrc
# gtags
wget http://mirror.hust.edu.cn/gnu/global/global-6.6.tar.gz
sudo tar -xvf global-6.6.tar.gz
cd global-6.6
./configure
make
sudo make install
cd ..
sudo rm -rf global-6.6 global-6.6.tar.gz
