#!/bin/bash 

USER=$(id -u)

if [ $USER -eq 0 ]
then 
    echo "you are super user"
else 
    echo "you are not super user"
    exit 1 # manually exiting 
fi 

VALIDATION_FUNCTION(){
    if [ $1 -eq 0 ]
    then
        echo "installation is successfull $2"
    else 
        echo "installation is failed $2"
        exit 1 
    fi 
}

dnf install mysql -y 

VALIDATION_FUNCTION $? "installing mysql"

dnf install yum -y 
VALIDATION_FUNCTION $? "installing yum "