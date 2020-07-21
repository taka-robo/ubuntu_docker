# 仮想化するベースOS
FROM dorowu/ubuntu-desktop-lxde-vnc:bionic
#FROM ubuntu:18.04

MAINTAINER taka

# install sudo
RUN apt-get update -q && \
    apt-get upgrade -yq && \
    apt-get install -y sudo
# add user
RUN useradd --create-home --home-dir /home/ubuntu --shell /bin/bash --user-group --groups adm,sudo ubuntu && \
    echo ubuntu:ubuntu | chpasswd && \
    echo "ubuntu ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

ENV USER ubuntu
