#!/bin/bash

if [ -z $(which mpstat) ]; then
    git clone git://github.com/sysstat/sysstat
    cd sysstat && ./configure
    make && sudo make install
    cd ..
    sudo rm -rf sysstat
fi

mkdir -p ~/.local/bin

curl -fsSL https://raw.githubusercontent.com/Piorosen/mpstat2csv/main/mpstat2csv > ~/.local/bin/mpstat2csv && \
    chmod +x ~/.local/bin/mpstat2csv
