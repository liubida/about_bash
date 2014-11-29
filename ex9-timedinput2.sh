#!/bin/bash
# ex9-timedinput2.sh
# author: liubida


# Usage: 

INTERVAL=5 # timeout interval

timeout_read(){
    timeout=$1
    varname=$2
    old_tty_settings=`stty -g`
    stty -icanon min 0 time ${timeout}0
    eval read $varname
    stty "$old_tty_settings"
}

echo
echo -n "what's your name? Quick!"
timeout_read $INTERVAL your_name

echo
if [[ $your_name ]]; then
    echo "your name is $your_name"
else
    echo "time out"
fi

exit 0


