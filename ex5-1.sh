#!/bin/bash
# ex5-1.sh
# author: liubida


# Usage:

echo 

var="'(]\\{}\$\""
echo $var   # '(]\{}$"
echo "$var" # '(]\{}$" Doesn't make a difference.

echo

IFS='\'
echo $var   # '(] {}$"
echo "$var" # '(]\{}$" \ converted to space. Why?

echo "why can't i write 's between single quotes"
echo 'Why can'\''t I write '"'"'s between single quotes'
echo '"hello"'
echo -e "\a"
sleep 1 
echo -e "\a"

if /usr/bin/[ -z "$1" ]; then
    echo "No command-line arguments"
else
    echo "first command-line argument is $1."
fi
