#! /bin/sh
# input2インストールスクリプト
# author Tkaaki Nara

sudo apt update
sudo apt upgrade

sudo apt install -y \
    git git-flow \
    build-essential \
    cmake \
    autoconf \
    automake \
    libtool \
    curl \
    make \
    g++ \
    unzip \
    libeingen3-dev \
    libprotobuf-dev protobuf-compiler \

#boost install
cd && git clone --recursive https://github.com/boostorg/boost.git && cd boost && ./bootstrap.sh
./b2 toolset=gcc-7 --prefix=/usr/local -j5

#qt creator install 
sudo apt install libxkbcommon-x11-0

#qwt install
cd && wget https://sourceforge.net/projects/qwt/files/qwt/6.1.4/qwt-6.1.4.tar.bz2
tar -vxjf qwt-6.1.4.tar.bz2 && cd qwt-6.1.4