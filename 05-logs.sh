#!/bin/bash 

USER=$(id -u)
TIME_STAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$( echo $0 | cut -d "." -f1)
echo "script name is $SCRIPT_NAME-$TIME_STAMP"
LOG_FILE=/tmp/$SCRIPT_NAME-$TIME_STAMP.log 


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

dnf install mysql -y &> LOG_FILE

VALIDATION_FUNCTION $? "installing mysql"

dnf install yum -y  &> LOG_FILE
VALIDATION_FUNCTION $? "installing yum "