#!/bin/bash
# Author: Efosa Oviawe
# Date: 10/05/2024
# Version: 1
# Description: Script that returns the current server status

# Assign a value

server_name=$(hostname)

echo $server_name

set -ox
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

all_checks

