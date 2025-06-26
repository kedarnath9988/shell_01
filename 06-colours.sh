#!/bin/bash 

USER=$(id -u)
SCRIPT_NAME=$($0 | cut -d "." -f1)
TIME_STAMP=$(date +%F-%H-%M-%S)
echo "script name is $SCRIPT_NAME-$TIME_STAMP"
LOG_FILE=/tmp/$SCRIPT_NAME-$TIME_STAMP.log 

#colurs 
R="\e[31m"
N="\e[0m"

if [ $USER -eq 0 ]
then
    echo -e  " $R you are super user $N"
else 
    echo " you are not super user"
    exit 1 
fi 

VALIDATION_FUNCTION(){
    if [ $1 -eq 0 ]
    then
        echo " installing is successfull $2..........."
    else 
        echo " installing is Failure  $2..........."
        exit 1 
}


dnf install git -y &>>$LOG_FILE

VALIDATION_FUNCTION $? "installing git" 

dnf install mysql -y  &>>$LOG_FILE
VALIDATION_FUNCTION $? "installing git"