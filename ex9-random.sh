#!/bin/bash
# ex9-random.sh
# author: liubida


# Usage: $RANDOM returns a different random integer at each invocation.
# Nominal range: 0 - 32767 (signed 16-bit integer).

MAXCOUNT=10

count=1
echo
echo -------------
while (( $count <= $MAXCOUNT )); do
    number=$RANDOM
    echo $number
    (( count = count + 1 ))
done

echo -------------

RANGE=100
number=$RANDOM
(( number %= $RANGE ))
echo "randome number less than $RANGE: $number"

echo -------------
number=$((RANDOM%25+6))
echo "generate random number between 6 and 30: $number"

exit 0
