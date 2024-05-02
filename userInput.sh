#!/bin/bash

################# USER INPUT ################


echo "What is your name:"
read name
#
echo "Hi there $name"
echo "Welcome to bash scripting!"

#
# The above code can be shorten by replacing the first echo with the below:

read -p "What is your name? " name
echo "Hi there $name"
echo "Welcome to bash scripting"
