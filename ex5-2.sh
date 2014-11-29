#!/bin/bash
# ex5-2.sh
# author: liubida


# Usage:

decimal=15
octal=017
hex=0x0f

if [[ $octal -eq $hex ]];then
    echo octal equals hex
fi
