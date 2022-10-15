#!bin/bash

#!/bin/bash
#Date : 04-June-2022
#Author : Pankaj Kumar Singh
#Purpose : This shell is used for Linux machine ready to use
# Google Chrome, Vscode, Anydesk, Git, Microsoft Teams installation

echo “Your installation is started”

# updating the system
sudo apt-get update
sudo apt-get upgrade -y 
echo -e "\e[1;32m YOur machineis updated successfully  \e[0m"


# - Installing Java
sudo apt install openjdk-11-jre-headless -y

# Installing JQ
sudo apt install jq -y

# Instaling Docker
sudo apt install docker.io -y

# Installing AWS CLI

sudo apt install awscli

# Installing Python

sudo apt-get install python3-pip -y

# Upgrading aws cli with pip 3
sudo pip3 install --upgrade awscli  

# adding a group name with docker
sudo groupadd docker

# adding docker user as a default user
sudo usermod -aG docker $USER

# Changing the permission for the Docker
sudo chmod 666 /var/run/docker.sock
