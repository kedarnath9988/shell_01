#!/bin/bash 

USER=$(id -u)
SCRIPT_NAME=$($0 | cut -d "." -f1)
TIME_STAMP=$(date +%F-%H-%M-%S)
echo "script name is $SCRIPT_NAME-$TIME_STAMP"
LOG_FILE=/tmp/$SCRIPT_NAME-$TIME_STAMP.log 

#colurs 
R="\e[31m"
Y="\e[32m"
G="\e[33m"
N="\e[0m"

if [ $USER -eq 0 ]
then
    echo -e  " $G you are super user $N"
else 
    echo -e "$R you are not super user $N"
    exit 1 
fi 

VALIDATION_FUNCTION(){
    if [ $1 -eq 0 ]
    then
        echo -e "$G installing is successfull $2........... $N"
    else 
        echo -e "$R installing is Failure  $2........... $N"
        exit 1 
    fi 
}


dnf install git -y &>>$LOG_FILE

VALIDATION_FUNCTION $? "installing git" 

dnf install mysql -y  &>>$LOG_FILE
VALIDATION_FUNCTION $? "installing mysql "