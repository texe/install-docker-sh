#!/bin/bash

sudo apt-get update

# install dependencies 
sudo apt-get -y install apt-transport-https ca-certificates curl software-properties-common

# add the gpg key for docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# add the repository in the Linux mint 20
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(. /etc/os-release; echo "$UBUNTU_CODENAME") stable"

sudo apt-get update

# install docker and docker-compose
sudo apt-get install docker docker-compose

# add the user system to docker group (restart required)
sudo usermod -aG docker $USER
