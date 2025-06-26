#!/bin/bash 

age=$1

if [ $age -gt  18]
then 
    echo "you are eligible for vote & your age is $age"
else 
    echo "you are  not eligible for vote "
fi 

