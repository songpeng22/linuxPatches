#!/bin/bash
# global bashrc
cat ../overlay/etc/bash.bashrc >> /etc/bash.bashrc
# local bashrc
cp  ../overlay/home/peng/.bash_aliases ~/
cat ../overlay/home/peng/.bashrc >> ~/.bashrc
