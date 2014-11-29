#!/bin/bash
# str_test.sh
# author: liubida


# Usage:

if [ -n $str ]; then
    echo str is not null
else
    echo str is null
fi

if [ -n "$str" ]; then
    echo str is not null
else
    echo str is null
fi

if [ $str ]; then
    echo str is not null
else
    echo str is null
fi

str=initialized
 
if [ "$str" ]; then
    echo str is not null
else
    echo str is null
fi
  
str="a = b"

if [ $str ]; then
    echo str is not null
else
    echo str is null
fi

if [ "$str" ]; then
    echo str is not null
else
    echo str is null
fi



