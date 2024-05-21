#!/bin/bash
#
# Author : Efosa Oviawe
# Date : 20/05/2024
# Version : 2
# Description : Script to install and start an NGINX webserver on any server with different package managers
#
###########################

# NOTE: First make the script executable with
# chmod +x <script_name>.sh

###########################
menu(){
echo "WELCOME TO NGINX INSTALLER"
echo "
	On what server do you want to install Nginx?? 
	$(1)'1) Ubuntu/Debian
	$(2)'2) Fedora
	$(3)'3) RedHat
	$(4)'4) Mac
	$(5)'5) None
	$(0)'0) Exit

"
read -p "Choose an option " typeOfServer

if [[ $typeOfServer -eq 1 ]]; then
	
	echo "Your server type is Ubuntu/Debian "
	# Update all packages on the server

	sudo apt-get update
	sudo apt-get  upgrade -y

	# Install NGINX server

	sudo apt-get install nginx -y

elif [[ $typeOfServer -eq 2 ]]; then
	echo "Your server type is Fedora "
	# Update all packages on the server

	sudo dnf  update
	sudo dnf upgrade -y

	# Install NGINX server

	sudo dnf install nginx -y
elif [[ $typeOfServer -eq 3 ]]; then
        echo "Your server type is RedHat "
	# Update all packages on the server

	sudo yum update
	sudo yum   upgrade -y

	# Install NGINX server

	sudo yum install nginx -y
elif [[ $typeOfServer -eq 4 ]]; then
        echo "Your server type is Mac "
	
	# Update all packages on the server

	sudo brew  update
	sudo brew  upgrade -y

	# Install NGINX server

	sudo brew install nginx -y
else
	echo "Wrong input, start again"
fi
}


##########################
func_enable(){
# Enable NGINX web server

sudo systemctl enable nginx
sudo systemctl start nginx

# check the status

sudo systemctl status nginx
}

#######################
date_func(){

hour='date +%H'

if [ $hour -lt 12 ]; then
	echo " GOOD MORNING, INSTALLATION COMPLETED "

elif [ $hour -le 16 ]; then 
	echo " GOOD AFTERNOON, INSTALLATION COMPLETED"

elif [ $hour -le 20 ]; then
	echo " GOOD EVENING, INSTALLATION COMPLETED"
}
else 
	echo "GOOD NIGHT, INSTALLATION COMPLETED

fi"



########################
Function call
####################
all_func(){

	menu
	func_enable
	date_func
}

all_func

echo "You are good to go......."
