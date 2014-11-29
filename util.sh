#!/bin/bash
# util.sh

# usage: 
# generate a bash_script file
# add the x mod
# echo some comments to the script

E_FILEEXIST=74
E_NOARGS=75

if [ -z $1 ]; then
    echo "Usage: `basename $0` filename"
    exit $E_NOARGS
fi

if [ -e $1 -o -e $1.sh ]; then
    echo "$1 or $1.sh is exist"
    exit $E_FILEEXIST
fi

if [[ ! $1 =~ .*.sh$ ]]; then
    name=$1.sh
else
    name=$1
fi

echo "#!/bin/bash">$name
echo "# $name">>$name
echo "# author: liubida">>$name
echo >>$name
echo >>$name
echo "# Usage:">>$name
echo >>$name
echo >>$name
echo 'echo -------------' >>$name

sudo chmod a+x $name
vim $name

