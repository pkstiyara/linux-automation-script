#!/bin/bash
#Date : 04-June-2022
#Author : Pankaj Kumar Singh
#Purpose : This shell is used for Linux machine ready to use
# Google Chrome, Vscode, Anydesk, Git, Microsoft Teams installation

echo “Your installation is started”

# updating the system
sudo apt-get update
sudo apt-get upgrade

# Installing  Google Chrome 
# Before installing google chrome install wget
sudo apt install wget

# After install this with wget
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

sudo dpkg -i google-chrome-stable_current_amd64.deb

echo#This will print the message in green color
echo -e "\e[1;32m Google Chrome installed successfully  \e[0m"

google-chrome -version

#VSCODE  installation  start from here

sudo apt-get install wget gpg
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vs>
rm -f packages.microsoft.gpg

sudo apt install apt-transport-https
sudo apt update
sudo apt install code # or code-insider

# Successfully installed vscode now checking the version of that.
code -v

echo -e "\e[1;32m VS-Code Installed Successfully  \e[0m"

# Installing Microsoft Teams
# Downloading by curl then istalling the app
curl https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -


sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/ms-teams stable main" > /etc/apt/sources.list.d/teams.list'

sudo apt update
sudo apt install teams

echo -e "\e[1;32m Congratulations You have sucessfully installed Teams  \e[0m"
