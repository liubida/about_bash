#!/bin/bash
# ex4-7.sh
# author: liubida


# Usage:

until [ -z "$1" ]
do
    echo -n "$1 "
    shift
done

echo

# But, what happens to the "used-up" parameters?
echo "$1"
echo "$#"
echo "$*"
# Nothing echoes!
# When $2 shifts into $1 (and there is no $3 to shift into $2)
# then $2 remains empty.
# So, it is not a parameter *copy*, but a *move*.


# However, as Eleni Fragkiadaki, points out,
# attempting a 'shift' past the number of
# positional parameters ($#) returns an exit status of 1,
# and the positional parameters themselves do not change.
# This means possibly getting stuck in an endless loop. . . .

# For example:
# until [ -z "$1" ]
# do
# echo -n "$1 "
# shift 20 # If less than 20 pos params,
# done
# then loop never ends!
#
# When in doubt, add a sanity check. . . .
# shift 20 || break

