#!/bin/bash
# Author: Efosa Oviawe
# Date: 13/05/2024
# Version: 1
# Description: Script that present an interactive menu with the server status

# Assign a value

server_name=$(hostname)

##
# Color Variables
##
green='\e[32m'
blue='\e[34m'
clear='\e[0m'
##
# Color Functions
##
ColorGreen(){
 echo -ne $green$1$clear
}
ColorBlue(){
 echo -ne $blue$1$clear
}
################

menu(){
	echo -ne "
		My First Menu
		$(ColorGreen '1)') Memory Usage
		$(ColorGreen '2)') CPU load
		$(ColorGreen '3)') Disk Usage
		$(ColorGreen '4)') Ram Usage
		$(ColorGreen '5)') Kernel version
		$(ColorGreen '6)') Check All
		$(ColorGreen '0)') Exit
		$(ColorBlue 'Choose an option:')"
	
			read a
 				case $a in
 					1) memory_check ; menu ;;
 					2) cpu_usage ; menu ;;
 					3) disk_usage ; menu ;;
 					4) ram_usage ; menu ;;
					5) kernel_check ; menu ;;
 					6) all_checks ; menu ;;
 					0) exit 0 ;;
 					*) echo -e $red"Wrong option."$clear;
				WrongCommand;;
 					esac


}


################# MEMORY CHECK ################
#
function memory_check(){
   echo ""
	echo " The current memory usage on ${server_name} is: "
	free -h
	echo ""
}
#################### DISK USAGE ######################
#
function disk_usage(){
    echo ""
	echo "The current disk uage on ${server_name} is : "
	df -h
	echo ""
}

################## CPU USAGE ###################
#
function cpu_usage(){
  echo ""
	echo "The cpu has been up on ${server_name} for : ""
	uptime
	echo ""

}
#
#################  RAM USAGE ##################
function ram_usage(){
  echo ""
        echo "The available and used ram on ${server_name} is : ""
        top
        echo ""

}
#
################## EXACT KERNEL VERSION #################
#
function kernel_check() {
 echo ""
 	echo "Kernel version on ${server_name} is: "
 	echo ""
 	uname -r
 echo ""
}



function all_checks(){
	memory_check
	disk_usage
	cpu_usage
	ram_usage
	kernel_check
}

# all_checks
menu
