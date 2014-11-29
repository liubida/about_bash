#!/bin/bash
# ex8-numbers.sh
# author: liubida


# Usage:

let "dec = 32"
echo "decimal number = $dec"

((oct = 032))
echo "octal number = $oct"

((hex = 0x32))
echo "hex number = $hex"

echo $((0x9abc))

((bin = 2#1110))
echo "bin number = $bin"

((b32 = 32#77))
echo "base_32 number = $b32"

((b64 = 64#@_))
echo "base_64 numbser = $b64"


