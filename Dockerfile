# 仮想化するベースOS
FROM ubuntu:18.04

MAINTAINER taka

# install sudo
RUN apt-get update && apt-get install -y sudo
# add user
RUN groupadd -g 1000 developer && \
    useradd -g developer -G sudo -m -s /bin/bash input && \
    echo 'input:input' | chpasswd

WORKDIR /home/input
RUN echo 'Defaults visiblepw'             >> /etc/sudoers
RUN echo 'iganari ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
RUN apt-get install -y \
    ubuntu-desktop\
    novnc websockify python-numpy

USER input
