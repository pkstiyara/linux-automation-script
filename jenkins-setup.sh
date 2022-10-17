#!/bin/bash
#Date : 05-October-2022
#Author : Pankaj Kumar Singh
#Purpose : This script is used for installing and configuring a Jenkins Server on U Ubnutu Linux.
# This is provide a new jenkins machine ready to use.


echo “Your installation is started”

# updating the system
sudo apt-get update && sudo apt-get upgrade -y


# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
# Step 1 : Installation of Java 
# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

sudo apt update
sudo apt install openjdk-11-jre

# .................................
# Installation of Jenkins
# .................................

curl -fsSL https://pkg.jenkins.io/debian/jenkins.io.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null
  
 echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
   
sudo apt-get update
sudo apt-get install jenkins

# Enable the Jenkins Server and checking the Status for the same

sudo systemctl enable jenkins

sudo systemctl start jenkins

sudo systemctl status jenkins

# Check the Status of  jenkins service running goto the localhost port 8080 in the browser fo the intial setup

#for example in EC2 : publicip:8080   Note: Make sure open port 8080 in sg


#Jenkins step to find the secrect key for intial setup

# /var/lib/jenkins/secrets/initialAdminPassword

# Next configure and proceed further

