#!/bin/bash
#
# author: Efosa Oviawe
# description: script to greet user anytime of the day
# version: 1
#
#
date_func(){

	hour=`date +%H`
	read -p "What is your name : " name
	if [ $hour -lt 12 ] # if hour is less than 12
	then
	echo "GOOD MORNING, ${name^^}"
	elif [ $hour -le 16 ] # if hour is less than equal to 16
	then
	echo "GOOD AFTERNOON, ${name^^}"
	elif [ $hour -le 20 ] # if hour is less than equal to 20
	then
	echo "GOOD EVENING, ${name^^}"
	else
	echo "GOOD NIGHT, ${name^^}"
	fi
}

date_func	
