#!/bin/bash
# ex8-2.sh
# author: liubida


# Usage: counting to 7 in 10 different ways

n=1
echo $n

let "n = n + 1" 
echo $n

: $(( n = n + 1)) # ":" necessary
echo $n

((n = n + 1))
echo $n

n=$((n + 1))
echo $n

let "n++"
echo $n

((n++))
echo $n

echo

