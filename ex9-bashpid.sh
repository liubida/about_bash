#!/bin/bash
# ex9-bashpid
# author: liubida


# Usage: 
# $BASHPID : process id of the current instance of bash.
# this is not the same as the $$ variable, but it often gives the same
# result

echo no subshell ----------------
echo '$BASH_SUBSHELL is ' $BASH_SUBSHELL
echo '$$ is ' $$
echo '$BASHPID is ' $BASHPID
echo no subshell ----------------

echo in subshell ----------------

(
echo '$BASH_SUBSHELL is ' $BASH_SUBSHELL
echo '$$ is ' $$
echo '$BASHPID is ' $BASHPID
)
echo in subshell ----------------

echo '$$' returns pid of parent process

