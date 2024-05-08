#!/bin/bash
#
# Author: Efosa Oviawe
# Date : 08/05/2024
# Version: 1
#
######################################## BASH LOOPS #########################

# FOR LOOPS

users="john doe ethan ton"

for user in ${users}
do
   echo "${user}"
done
###############
#
for num in {1..10}
do
  ### Trying out things
	if [[ $num -lt 5 ]] ; then
		echo "less than 5"
	elif [[ $num -ge 5 ]] ; then
		echo "greater the 5"
	else
		echo "not recognise"
	fi
done
#############################
# While loops

read -p "What is your name? " name
while [[ -z ${name} ]]
do
  echo "Your name can not be blank. Please enter a valid name!"
  read -p "Enter your name again?" name
done
echo "Hi there ${name}"

# Eg 2

counter=1
while [[ $counter -le 10 ]]
do
  echo $counter
  ((counter++))
done
########################
# Until loop
#
# The difference between until and while loops is that the until loop will run the commands within the loop until the condition becomes true.

#Eg1

count=1
until [[ $count -gt 10 ]] 
do
  echo $count
  ((count++))
done

########################## CONTINUE AND BREAK ################
# Continue
#
# continue tells your bash script to stop the current iteration of the loop and start the next iteration.
#
for x in 1 2 3 4 5
do
 if [[ $x == 2 ]]
 then
 echo "skipping number 2"
 continue
 fi
 echo "x is equal to $x"
done
#
#
# Break
#
# break tells your bash script to end the loop straight away.
#
num=1
while [[ $num < 10 ]]
do
 if [[ $num == 5 ]]
 then
 break
 fi
 ((num++))
done
echo "Loop completed"



