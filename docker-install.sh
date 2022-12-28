#!/bin/bash
sudo apt install curl
sudo apt install nano
sudo apt-get install curl
sudo apt-get install gnupg
sudo apt-get install ca-certificates
sudo apt-get install lsb-release
sudo apt-get upgrade
sudo apt-get update

sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo apt-key fingerprint 0EBFCD88

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io

# add current user to docker group so there is no need to use sudo when running docker
sudo groupadd docker
sudo usermod -aG docker $(whoami)


sudo curl -L https://github.com/docker/compose/releases/download/v2.14.2/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version
