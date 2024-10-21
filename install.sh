#!/bin/bash

echo "check: duplicated install mpstat2csv"

if [ ! -z $(which mpstat2csv) ]; then 
    echo "found mpstat2csv [ $(which mpstat2csv) ]"
    exit
fi

echo "not found mpstat2csv. start install mpstat2csv"
echo "check: exists mpstat"
if [ -z $(which mpstat) ]; then 
    echo "not found mpstat."
    echo "install: mpstat from source in github"
    echo "maybe? your permission."
    

    git clone https://github.com/sysstat/sysstat -b v12.7.6
    cd sysstat && ./configure
    make && sudo make install
    cd ..
    sudo rm -rf sysstat

fi
echo "installed: mpstat ($(which mpstat))"

echo "create directory: $HOME/.local/bin"
mkdir -p ~/.local/bin

echo "download: mpstat2csv from github to ~/.local/bin/mpstat2csv"

curl -fsSL https://raw.githubusercontent.com/Piorosen/mpstat2csv/main/mpstat2csv > ~/.local/bin/mpstat2csv && \
    chmod +x ~/.local/bin/mpstat2csv

echo "complete! if you want test 'mpstat2csv'."

