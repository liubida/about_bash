#!/bin/bash
# ex10-rand-str.sh
# author: liubida


# Usage:


if [[ -n $1 ]]; then
    str0=$1
else
    str0=$$
fi

POS=2
LEN=8

str1=$( echo $str0 | md5sum | md5sum )
rand_str=${str1:POS:LEN}
echo $rand_str

exit 0

