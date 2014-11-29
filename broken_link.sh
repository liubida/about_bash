#!/bin/bash
# broken_link.sh
# author: liubida


# Usage:

# This, however, is a better method:
#
# find "somedir" -type l -print0|\
# xargs -r0 file|\
# grep "broken symbolic"|
# sed -e 's/^\|: *broken symbolic.*$/"/g'
#
# but that wouldn't be pure Bash, now would it.
# Caution: beware the /proc file system and any circular links!
################################################################

[[ $# == 0 ]] && directorys=`pwd` || directorys=$*

linkcheck(){
    for item in $1/*; do
        [[ -h "$item" && ! -e "$item" ]] && echo "$item"
        [[ -d "$item" ]] && linkcheck "$item"
    done
}

for dir in $directorys; do
    if [[ -d "$dir" ]]; then
        linkcheck "$dir"
    else
        echo "$dir is not a directory"
        echo "Usage: $0 dir1 dir2 ..."
    fi
done


