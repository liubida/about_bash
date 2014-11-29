#!/bin/bash
# ex9-lineno.sh
# author: liubida


# Usage: lineno
fun(){
echo "FUNCNAME    : "$FUNCNAME
}
echo "BASH        : "$BASH
echo "BASH_ENV    : "$BASH_ENV
echo "BASH_VERSION: "$BASH_VERSION
echo "EDITOR      : "$EDITOR
echo "EUID        : "$EUID
echo "UID         : "$UID
fun
echo "GLOBIGNORE  : "$GLOBIGNORE
echo "GROUPS      : "$GROUPS
echo "GROUPS[1]   : "${GROUPS[1]}
echo "HOME        : "$HOME
echo "HOSTNAME    : "$HOSTNAME
echo "HOSTTYPE    : "$HOSTTYPE
echo "IFS         : "$IFS
echo "LINENO      : "$LINENO
echo "MACHTYPE    : "$MACHTYPE
echo "OSTYPE      : "$OSTYPE
echo "OLDPWD      : "$OLDPWD
echo "PWD         : "$PWD   
echo "PATH        : "$PATH
echo "SHELLOPTS   : "$SHELLOPTS
echo "SHLVL       : "$SHLVL    
echo "TMOUT       : "$TMOUT
echo "-----variables below not bash builtin-----"
echo "ENV         : "$ENV
echo "LOGNAME     : "$LOGNAME
echo "MAIL        : "$MAIL
echo "TERM        : "$TERM
echo "USER        : "$USER
echo "USERNAME    : "$USERNAME
echo "SHELL       : "$SHELL


