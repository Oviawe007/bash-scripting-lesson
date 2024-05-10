#!/bin/bash
#
# Author: Efosa Oviawe
# Date : 10/05/2024
# Version: 1
#
################################### BASH FUNCTIONS ###############
#
# Functions are blocks of reusable code. The structure of a func in bash is:

# function func_name(){
#    your_commands
#  } 

# The function keyword at the beginning can be omitted i.e 

# func_name(){
#  your_commands
# }

# Example:

function hello(){
    echo "Hello world from a function"
}

hello
#
# Note that you should not add the perenthesis when you call the function
#
######### PASSING ARGUMENTS TO A FUNCTION #############
function addNum(){
  a=$1
  b=$2
  sum=$(($a + $b))
  echo "The sum is: $sum"

}
addNum 2 4
