myArr-size#!/bin/bash
#
# Author: Efosa Oviawe
# Date : 07/05/2024
#
######################################## BASH ARRAYS #########################

# You can initialize an array by assigning values devided by space and enclosed in () on like other programming lang# uage. For example: 


my_array=("val 1" "val 2" "val 3" "val 4" "val 5")

# To access the elements in the array, you need to reference them by their numeric index.
# NOTE: you have to use curly brackets.


# # Accessing the second element in the array: val 2
echo "The second item is: "${my_array[1]}

# This would return the last element: val 4
#
myArr_size=${#my_array[@]}
#
echo "The last item in the array is: "${my_array[${myArr_size}-1]}
#
# All argument will be returned using the @ symbol

echo "All the items are: "${my_array[@]} 

# But when we have to get the total item in the array, we have to prepend # to the above command

echo "The total item is: "${#my_array[@]}
#
#
###################### SUBSTRING IN BASH : Slicing #######################
#
letters=( "A" "B" "C" "D" "E" "F" )
#
echo ${letters[@]} #This will print all the items in the array as "ABCDEF"
#
echo ${letters[@]:0:2}  # This command will print starting from index 0 to 2, but not inclusive of 2 i.e "AB"
echo "${letters[@]:1}"    # print 2nd element onward
echo "${letters[@]::5}"    # print from index 0 to 5th element where 5th is not included i.e "ABCDE"
echo "${letters[@]:3:5}"  # print "DE" 
