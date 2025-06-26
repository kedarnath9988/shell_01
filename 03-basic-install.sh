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

if [ $? -eq 0 ]
then
    echo "installation is successful"
else 
    echo "installation is failed"
    exit 1 
fi 

dnf remove mysql -y 

if [ $? -eq 0 ]
then
    echo "installation is successful"
else 
    echo "installation is failed"
    exit 1 
fi 
