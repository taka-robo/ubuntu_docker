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
    libprotobuf-dev protobuf-compiler \

#boost install
cd && git clone --recursive https://github.com/boostorg/boost.git