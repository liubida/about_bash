#!/bin/bash
# ex9-amiroot.sh
# author: liubida


# Usage:

ROOT_UID=0

if [[ $UID == $ROOT_UID ]]; then
    echo "you are root"
else
    echo "you are not root"
fi

exit 0


