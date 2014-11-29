#!/bin/bash
# ex9-tmout.sh
# author: liubida


# Usage: the shell prompt will time out after $TMOUT seconds. 
# This will cause a logout

TMOUT=3

# just the shell prompt controlled by the $TMOUT,
# so the 'while' loop is invalid
# while [[ 1 ]]; do
#     : 
# done

echo "who is you father?"
echo "you only have $TMOUT seconds to answer!"
read father

if [[ ! $father ]]; then
    father="nobody"
fi

echo "your father is $father"

exit 0

