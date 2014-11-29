#!/bin/bash
# ex10-parameter.sh
# author: liubida


# Usage:


echo -------------
var1=1
var2=2
# var3 is unset

echo ${var2-$var1}
echo ${var3-$var1}
echo ${username-$(whoami)}
echo ${username-`whoami`}

echo -------------

echo `basename $PWD`
echo $0
echo `basename $0`
echo "${0##*/}"

echo -------------
var3=abcd-1234-defg
echo $var3
echo ${var3#*-*}
echo -------------
file=/home/liubida/abc/123/test.f
file_name=${file##/*/}
echo $file
echo $file_name

echo -------------
echo -------------
echo -------------
echo -------------
echo -------------
echo -------------
echo -------------
echo -------------
