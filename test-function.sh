#!/bin/bash
#
# Author: Efosa Oviawe
# Date : 14/05/2024
# Description: This is a test file to practice all that i have been learning
#
######################################## 
function menu(){
echo "
	Welcome to the bulb devops begiiners class. What would you like to learn today?
	01)  intro to devops
	02)  version control and collaboration
	03)  linux fundamentals
	04)  continous integration
	05)  cloud fundamentals
	06)  infrastructure as code (IaC)
	07)  containerization
	00)  exit
"

read -p "select with a single digit option: " option

case $option in
	1) intro_to_devops;; 
	2) version_control;;
	3) linux_fundamentals;;
	4) continous_integration;;
	5) cloud_fundamentals;;
	6) infra_as_code;;
	7) container;;
	0) exit; 
     WrongInput;;
	esac;

}


################### All function declaration ########

intro_to_devops(){
	echo "
		****** Introduction to DevOps ********
		
"
}

version_control(){
        echo '
                ****** Version Control ********

'
}

linux_fundamentals(){
        echo '
                ****** Linux Fundamentals ********

'
}

continous_integration(){
        echo '
                ****** Continous Integration ********

'
}
cloud_fundamentals(){
        echo '
                ****** Cloud Fundamentals ********

'
}

infra_as_code(){
        echo '
                ****** Infrastructure As Code ********

'
}

container(){
        echo '
                ****** Containerization ********

'
}

#################
### function call
menu



