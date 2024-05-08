#!/bin/bash
#
# Author: Efosa Oviawe
# Date : 08/05/2024
# Version : 1
#
######################################## BASH CONDITIONALS ######################
#
# IF Statement

# if [[ some_test ]]
# then
#	<commands>
# fi

# Example

read -p "What is your name?" name

if [[ -z ${name} ]]
then
	echo "Please enter your name!"
fi
###################

# IF-ELSE Statement

read -p "What is your name? " name

if [[ -z ${name} ]]
then
	echo "Please enter your name!"
else
	echo "Hi there ${name}"
fi

#####################
# ELIF

read -p "Enter a number: " num

if [[ $num -gt 0 ]] ; then
	echo "The number is positive"
elif [[ $num -lt 0 ]] ; then 
	echo "The number is negative"
else
	echo "The number is zero"
fi

############################
# Switch Case Statements

# We can use a case statement to simplfy complex conditionals when there are multiple diff choices.
#
# A quick rundown of the structure:
## 	All case statements start with the case keyword.
## 	On the same line as the case keyword, you need to specify a
## 	variable or an expression followed by the in keyword.
##	After that, you have your case patterns, where you need to use ) to identify the end of the pattern.
##	You can specify multiple patterns divided by a pipe: |.
##	After the pattern, you specify the commands that you would like to be executed in case that the pattern matc## hes the variable or the expression that you've specified.
##	All clauses have to be terminated by adding ;; at the end.

# Example

read -p "Enter the name of your car brand: " car

case $car in
	Tesla)
		echo -n "${car}'s car factory is in the USA."
		;;
	BMW | Mercedes | Audi | Porche)
		echo -n "${car}'s factory is in Germany."
		;;
	Toyota | Mazda | Mitsubishi | Subaru)
		echo -n "${car}'s car factory is in Japan."
		;;
	*)
		echo -n "${car}'s is an unknown car brand"
		;;
esac
