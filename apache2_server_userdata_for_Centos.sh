#!/bin/bash
#USe this for your user data  (script without new lines)
# Install httpd (Linux 2 Version)
yum update -y
yum install -y httpd.x86_64
systemctl start httpd.service
systemctl enable httpd.service
echo "Hello World from $(hostname -f)" > /var/www/html/index.html
