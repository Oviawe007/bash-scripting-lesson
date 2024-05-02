#!/bin/bash
#
##################### VARIABLES #######################
#
# We assign a variable with = sign:

name="Efosa"

# Notice as an important note, no space is allowed before and after the = sign

# You can access the variable by:

echo $name

# Wrapping the variable in a curly bracket is not required but considered best practice

echo ${name}

echo "Hi there, ${name}"


###################### ADDING VARIABLE FROM THE COMMAND LINE #############

# ./variable.sh Efosa Joe!

# The above script take two paramaters Efosa and Joe! separated by a space

echo "Hello ther " $1

# $1: first parameter

echo "Hello there" $2

# $2: Second parameter

echo "Hello there" $@
# $@: all
