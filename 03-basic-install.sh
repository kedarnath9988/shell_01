#!/bin/bash

USER=$(id -u)

if [ $USER -eq 0 ]
then 
    echo "you are super user"
else 
    echo "you are not super user"
    exit 1 # manually exiting 
fi 

dnf install mysql -y 

