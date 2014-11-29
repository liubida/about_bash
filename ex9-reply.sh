#!/bin/bash
# ex9-reply.sh
# author: liubida


# Usage: REPLY is the default value for a 'read' command.
# if there is no variable absorb a 'read' command, then value is set to $REPLY

echo
echo -n "What is your 1st vegetable? "
read

echo "Your 1st vegetable is $REPLY."
# REPLY holds the value of last "read" if and only if
#+ no variable supplied.

echo
echo -n "What is your 2nd fruit? "
read fruit
echo "Your 2nd fruit is $fruit."
echo "but..."
echo "Value of \$REPLY is still $REPLY."
# $REPLY is still set to its previous value because
#+ the variable $fruit absorbed the new "read" value.

echo
echo -n "What is your 3rd fruit? "
read 
echo "Your 3rd fruit is $REPLY."
echo "but..."
echo "Value of \$REPLY is $REPLY."

echo
exit 0

