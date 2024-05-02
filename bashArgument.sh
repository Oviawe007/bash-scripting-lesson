#!/bin/bash
#
##################### BASH ARGUMENTS #####################
#
# You can pass arguments to your shell script when you execute it. To
# pass an argument, you just need to write it right after the name of your
# script. For example:
#
# ./comment.sh your_argument
#
# In the script, we can then use $1 in order to reference the first argument that we specified.
# If we pass a second argument, it would be available as $2 and so on.
# for example:
#
echo "Argument one is $1"
echo "Argument two is $2"
echo "Argument three is $3"

# To reference all arguments, you can use $@:

echo "All arguments: $@"

#Another thing that you need to keep in mind is that $0 is used to reference the script itself.
#
echo "The name of the file is: $0 ."
