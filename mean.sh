#!/bin/bash
#Date : 26 September 2022
#Author : Pankaj Kumar Singh
#Purpose : Ready a MEAN Stack ( MongoDB, Express, ANgular, Node.js)
# This is widely used server in the world.

    # MongoDB (document database)
    # Express (back-end application framework)
    # Angular (front-end application framework)
    # Node.js (JavaScript runtime environment)

# This framework comes as an alternative to the widely known LAMP stack, 
# which uses JS on the client side, but PHP on the server side.



echo “Your installation is started”

# updating the system
sudo apt-get update
sudo apt-get upgrade

# Install MongoDB

# 1. First, import the MongoDB key with the command:
sudo apt-key adv –keyserver hkp://keyserver.ubuntu.com:80 –recv EA312927

# 2. Next, create a list file for MongoDB so the apt command knows where to download the packages:
echo “deb http://repo.mogodb.org/apt/ubuntu xenial/mogodb-org/3.2 multiverse” | sudo tee /etc/apt/sou.list.d/mogodb-org-3.2.list

sudo apt update
sudo apt install –y mongodb-org
sudo systemctl start mongod

# 6. The last step is to enable MongoDB to automatically start when the system launches.
sudo systemctl enable mongod

sudo systemctl status mogod(mongod)


# Step 3: Install Node.js and npm

sudo apt install curl

curl –sL https://deb.nodesource.com/setup_8.x | sudo -E bash –

sudo apt install nodejs

nodejs –version

npm –version

# Step 4: Install Git, Yarn, Gulp, and Bower
sudo apt install git

# 2. Yarn is a package manager used for client-side programming. It depends on Node.js and npm.
# Install Yarn on Ubuntu with the npm command:
sudo npm install –g yarn

# Gulp is a JS tool that automates development tasks.
sudo npm install –g gulp

# Install the Bower Package Manager to handle front-end packages:
 sudo npm –g bower

#  Verify the installation was successful:
 npm list –g –depth=0

# Step 5: Install MEAN

# 1. Start by cloning the MEAN repository with the following command:
git clone https://github.com/meanjs/mean.git

cd mean
sudo npm install
npm start

# Step 6: Verify Mean Stack Installation
npm start

echo "http://IP_Address_Or_Dmain:3000"