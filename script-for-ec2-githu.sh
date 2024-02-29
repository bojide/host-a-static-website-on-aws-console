#!/bin/bash
sudo su
yum update -y
yum install -y httpd
cd /var/www/html
wget https: //github.com/bojide/jupiter-site/raw/main/jupiter.zip 
unzip jupiter.zip
cp -r /var/www/html/jupiter-site/* /var/www/html
rm -rf jupiter.zip jupiter-main
systemctl enable httpd
systemctl start httpd