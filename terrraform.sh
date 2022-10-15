
#!bin/bash

#!/bin/bash
#Date : 15-October-2022
#Author : Pankaj Kumar Singh
#Purpose : This shell is used for Linux machine ready to use
# Google Chrome, Vscode, Anydesk, Git, Microsoft Teams installation

echo “Your installation is started”

# updating the system
 
sudo apt-get update && sudo apt-get install -y gnupg software-properties-common

echo -e "\e[1;32m YOur machineis updated successfully  \e[0m"

# Install the HashiCorp GPG key.

wget -O- https://apt.releases.hashicorp.com/gpg | \
    gpg --dearmor | \
    sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg

# Verify the key's fingerprint.

gpg --no-default-keyring \
    --keyring /usr/share/keyrings/hashicorp-archive-keyring.gpg \
    --fingerprint


#  Viewing the repository of Hashicorp

echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] \
    https://apt.releases.hashicorp.com $(lsb_release -cs) main" | \
    sudo tee /etc/apt/sources.list.d/hashicorp.list

# Downlaoding the package and installing

sudo apt update

sudo apt-get install terraform

# Verifying the installaiton 

terraform -help