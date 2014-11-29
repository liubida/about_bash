#!/bin/bash
# ex9-seconds.sh
# author: liubida


# Usage: $SECONDS-the number of seconds the script has been running

LIMIT=10
INTERVAL=1

echo
echo "Hit Control-C to exit before $LIMIT seconds."
echo

while (( $SECONDS <= $LIMIT )); do
    if [[ $SECONDS == 1 || $SECONDS == 0 ]]; then
        units=second
    else
        units=seconds
    fi
    echo "this script has been running $SECONDS $units."
    sleep $INTERVAL
done

echo -e "\a" 

exit 0


