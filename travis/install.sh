#!/bin/bash
# install step in travis, but split by OS, os name is passed as first argument

# Explicit showdown of relevan software
python3 --version ; pip3 --version ; sw_vers

if [ $1 = 'linux' ]; then
    # linux
    sudo apt-get update -q
    sudo apt install -y python3 python3-all python3-pip python3-setuptools python3-wheel make
    sudo pip3 install setuptools pyqt5 PyInstaller
fi


if [ $1 = 'osx' ]; then
    # macos
    pip install --upgrade pip
    pip3 install setuptools pyqt5 PyInstaller
fi


if [ $1 = 'windows' ]; then
    # windows
    sudo apt-get update -q
    sudo apt install -y p7zip-full

    # pull the docker for windows
    docker pull cdrx/pyinstaller-windows
fi
