#!/bin/bash 

USER=$(id -u)
SCRIPT_NAME=$($0 | cut -d "." -f1 )
TIME_STAMP=$(date +%H-%H-%M-%S)
echo "ecript name is $SCRIPT_NAME-$TIME_STAMP"
LOG_FILE=/tmp/$SCRIPT_NAME-$TIME_STAMP.log 

if [ $USER -eq 0 ]
then
    echo "your are super user"
else 
    echo "your are not super user"
    exit 1 
fi 

echo "packages passed or the command line is $#"

my_packages=$@

for i in {1..$my_packages} 
do 
    echo "package is $i"
done 

