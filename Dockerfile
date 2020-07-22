# 仮想化するベースOS
FROM dorowu/ubuntu-desktop-lxde-vnc:bionic
#FROM ubuntu:18.04

MAINTAINER Takaaki Nara

# install sudo
RUN apt-get update -q && \
    apt-get upgrade -yq && \
    apt-get install -y sudo apt-utiles gosu git wget vim
# add user
RUN useradd --create-home --home-dir /home/ubuntu --shell /bin/bash --user-group --groups adm,sudo ubuntu && \
    echo ubuntu:ubuntu | chpasswd && \
    echo "ubuntu ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

# install software
RUN cd && git clone https://github.com/taka-robo/ubuntu_docker.git 
#gosu ubuntu /tmp/ubuntu_docker/install.sh
ENV USER ubuntu
