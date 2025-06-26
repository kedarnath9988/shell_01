#!/bin/bash 

USER=$(id -u)
SCRIPT_NAME=$($0 | cut -d "." -f1 )
TIME_STAMP=$(date +%H-%H-%M-%S)
echo "ecript name is $SCRIPT_NAME-$TIME_STAMP"
LOG_FILE=/tmp/$SCRIPT_NAME-$TIME_STAMP.log 

#COLOURS 
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ $USER -eq 0 ]
then
    echo -e "$G your are super user $N"
else 
    echo -e " $R your are not super user $N"
    exit 1 
fi 

echo "packages passed or the command line is $@"

my_packages=$@

for i in $my_packages 
do 
    echo "package is $i"
    yum list installed $i &>>$LOG_FILE
    if [ $? -eq 0 ]
    then    
        echo -e  " $Y already installed $i ....... Skipping $N "
    else 
        echo -e  "$R need to install $i $N "
        dnf install $i -y 
    fi 
done 

