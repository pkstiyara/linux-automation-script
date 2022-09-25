#!/bin/bash
#Date : 26 September 2022
#Author : Pankaj Kumar Singh
#Purpose : Making a Linux, Apache MYSQL and PHP Server ready
# This is widely used server in the world.


    # Linux - Any Linux based operating system
    # Apache server - Apache is an open-source webserver
    # MySQL - MySQL database
    # PHP - PHP as a server-side programming language


echo “Your installation is started”

# updating the system
sudo apt-get update
sudo apt-get upgrade

# Installing the apache 2 
sudo apt install apache2

#Allowing Apache2 from Firewall
sudo ufw allow in "Apache Full"

# Verify the firewall changes
sudo ufw status

# Installing MYSQL 
sudo apt install mysql-server

# Login to mysql
sudo mysql

# exit from mysql
exit

#  Installing PHP
# This will install the following 3 packages

#     php -  installs PHP
#     libapache2-mod-php - Used by apache to handle PHP files
#     php-mysql - PHP module that allows PHP to connect to MySQL 

sudo apt install php libapache2-mod-php php-mysql

# Confirm the PHP installaing by checking the version
php -v
 
