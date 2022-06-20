#! /bin/bash
sudo apt update
sudo apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
sudo apt update
sudo apt-get install python3-pip -y
apt-cache policy docker-ce
sudo apt install docker-ce -y
sudo apt install awscli -y
sudo usermod -aG docker ${USER}
sudo -s
