#!/bin/bash

my_array=("rrr" "tillu" "hello")

echo "the 1st valu is ${my_array}"
echo "the 2st valu is ${my_array[1]}"
echo "the 2st valu is ${my_array[2]}"
echo "the 1st valu is ${my_array[@]}"

num=$1
num1=$2

sum=$(( $num + $num1 ))
echo $sum
