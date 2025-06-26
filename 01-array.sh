#!/bin/bash

my_array=("rrr" "tillu" "hello")

echo "the 1st valu is ${my_array}"
echo "the 2st valu is ${my_array[1]}"
echo "the 2st valu is ${my_array[2]}"
echo "the 1st valu is ${my_array[@]}"

num=$1
num1=$2

summ=$(($num + $num1))
echo $summ


echo "to print all the variables $#"

echo "count of varibles are passed $#"

echo "to print the cureent shell script namr $0"

echo "current user of the $USER"

echo "cureent directory $PWD"

echo "to know the HOSTname is  $HOSTNAME"

echo "pid of the current shell script $$"

sleep 600 & 

echo "process instance id of the previous command is $!"

echo "exit status means success or failure of the last or previous commad is $!" 

