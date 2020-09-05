#!/bin/bash
# install python and pip
sudo apt install python3
sudo apt install python3-pip
# upgrade pip , make 'pip config' available
pip3 install --index-url https://pypi.tuna.tsinghua.edu.cn/simple --upgrade pip 
# check config list
#python3 -m pip config list
# config a local source
#pip3 config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple
# local config
sudo cp -r ../overlay/home/peng/.pip ~/
