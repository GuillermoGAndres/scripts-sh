#!/bin/zsh

arg1=$1 # Nombre del file origina
arg2=$2 # input.txt 
arg3=$3 # output.txt

if [ -z "$arg2" ]
then
    g++ -pipe -std=c++11 $arg1 && ./a.out 
    # echo "\$var is empty"
else
    if [ -z "$arg3" ]
    then
        g++ -pipe -std=c++11 $arg1 && ./a.out < $arg2
    else
        g++ -pipe -std=c++11 $arg1 && ./a.out < $arg2 > $arg3
        echo "cat command of "$arg3":"
        cat $arg3
    fi
    
fi

# Una tercer manera de usarlo
# ./run.sh example.cpp > output.txt

