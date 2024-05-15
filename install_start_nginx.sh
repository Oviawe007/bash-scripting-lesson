#!/bin/bash
#
# Author : Efosa Oviawe
# Date : 15/05/2024
# Version : 1
# Description : Script to install and start an NGINX webserver on Ubuntu
#
###########################

# NOTE: First make the script executable with
# chmod +x <script_name>.sh

###########################

# Update all packages on the server

apt-get update
apt-get  upgrade -y

# Install NGINX server

apt-get install nginx -y

# Enable NGINX web server

systemctl enable nginx
systemctl start nginx

# check the status

sytemctl status nginx

