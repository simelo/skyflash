#!/bin/bash
# install step in travis, but split by OS, os name is passed as first argument

# Explicit showdown of relevan software
python3 --version ; pip3 --version

if [ $1 = 'linux' ]; then
    # linux
    pip3 install -U pip PyInstaller
    pip3 install -r requirements.txt
fi


if [ $1 = 'osx' ]; then
    # macos
    pip3 install -U pip PyInstaller
    pip3 install -r requirements.txt
fi


if [ $1 = 'windows' ]; then
    # windows
    sudo apt-get update -q
    sudo apt install -y python3 python3-all python3-pip python3-setuptools python3-wheel p7zip-full make
    pip3 install -U setuptools
    pip3 install -r requirements.txt

    # pull the docker for windows
    docker pull cdrx/pyinstaller-windows
fi

# Explicit showdown of relevan software
python3 --version ; pip3 --version