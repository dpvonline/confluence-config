#!/bin/bash
set -eux

## Install docker
apt-get update
apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

apt-get update
apt-get install -y docker-ce docker-ce-cli containerd.io

## Add user to docker group
usermod -aG docker $USER

## Install docker-compose
apt-get install -y python3-pip \
  && pip3 install --upgrade pip \
  && pip3 install docker-compose



## Install git
apt install git -y


## Prepare folders
mkdir -p /data/confluence/db
mkdir -p /data/confluence/data
mkdir -p /backup/confluence
touch /backup/confluence/init