#!/bin/bash
# gcd.sh
# author: liubida


# Usage: The "greatest common divisor" (gcd) of two integers
# is the largest integer that will divide both, leaving no remainder.


ARGS=2
E_BADARGS=75
USAGE="Usage: `basename $0` first-number second-number"

if [[ $# != $ARGS ]]; then
    echo $USAGE
    exit $E_BADARGS
fi

gcd(){
    dividend=$1
    divisor=$2

    remainder=1

    until [[ $remainder == 0 ]]
    do
        #let "remainder = dividend % divisor"
        remainder=$(( dividend % divisor ))
        dividend=$divisor
        divisor=$remainder
    done
}

gcd $1 $2
echo "GCD of $1 and $2 is $dividend"

