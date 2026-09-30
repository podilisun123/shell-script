#!/bin/bash
USER=$(id -u)
TIME_STAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/${SCRIPT_NAME}-$TIME_STAMP.log

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
if [ $USER -ne 0 ]
then 
    echo "you should run script in root user"
else
    echo "your super user"
fi
validate(){
    if [ $1 -ne 0 ]
    then
        echo -e "$2 is install $R FAILED$N"
    else
        echo -e "$2 is $G SUCESS $N"
    fi
}
for i in $@
do
    dnf list installed $i
    if [ $? -eq 0 ]
    then
        echo "$i already installed $Y SKIPPING $N"
    else
        dnf install $i -y
        validate $1 "install $i"
    fi
done
