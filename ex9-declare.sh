#!/bin/bash
# ex9-typing-variables.sh
# author: liubida


# Usage:

func1(){
    echo 'i am in func1'
}
func2(){
    echo 'i am in func2'
}
func3(){
    echo 'i am in func3'
}

declare -r var1=1 && echo $var1 #; var1=1
readonly   var2=2 && echo $var2 #; var2=2
echo -------------

declare -i number
number=8     && echo $number
number=three && echo $number
number=9/4   && echo $number
echo -------------

declare -a indices
echo -------------

declare -f
declare -f func1
declare -f func[1-2]

echo -------------
echo -------------
