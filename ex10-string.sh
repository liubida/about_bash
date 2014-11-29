#!/bin/bash
# ex10-string.sh
# author: liubida


# Usage:


echo -------------
stringZ="123456789"
reg='.*[2-4]\{3,5\}'
echo $stringZ
echo length:      ${#stringZ}
echo length:      `expr length $stringZ`
echo match_len:   `expr match "$stringZ" $reg`
echo match_index: `expr index "$stringZ" $reg`
echo match_con:   `expr match "$stringZ" "\($reg\)"`
echo match_con_end:`expr match "$stringZ" ".*\($reg\)"`
echo sub_str:     `expr substr "$stringZ" 1 2`
echo -------------

substr='1?3'
echo ${stringZ:1:2}
echo ${stringZ:-4}
echo ${stringZ:(-4)}
echo ${stringZ: -4}
echo 
substr='1?3'
echo ${stringZ#$substr}
echo ${stringZ##$substr}
substr='???9'
echo ${stringZ%$substr}
echo ${stringZ%%$substr}
echo -------------
stringZ=abcABC123ABCabc
echo $stringZ
echo ${stringZ/ABC/XYZ} ## Replaces first match of 'ABC' with 'xyz'
echo ${stringZ/ABC} ## Replaces first match of 'ABC' with nothing 
echo ${stringZ/#ABC/xyz} ## If $substring matches front end of $string, substitute $replacement for $substring
echo ${stringZ/%ABC/xyz} ## If $substring matches back end of $string, substitute $replacement for $substring
echo ${stringZ//ABC/XYZ} ## # Replaces all matches of 'ABC' with 'xyz'
echo ${stringZ//ABC} ## # Replaces all matches of 'ABC' with nothing

echo -------------
suff=sh
SUFF=SH

for i in $(ls *.$suff); do
    echo ${i%.$suff}
done

echo -------------
str=23skidoo1
#   012345678  bash
#   123456789  awk

echo ${str:2:4}
echo | awk '{print substr("'"${str}"'",3,4)}'
echo | awk '{print index("'"${str}"'","skid")}'

echo -------------




echo -------------
echo -------------
echo -------------

