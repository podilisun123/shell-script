#!/bin/bash
USER=$(id -u)
TIME_STAMP=$(date +%F-%H-%M-%S)
SCRIPT_FILE=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_FILE-$TIME_STAMP.log
R="\e[31m"
G="\e[32m"
N="\e[0m"
if [ $USER -ne 0 ]
then
    echo "run script file in root user"
else
    echo "you are super user"
fi

validate(){
    if [ $1 -ne 0 ]
    then
        echo -e "$2 is $R FAILED......$N"
    else
        echo -e "$2 is $G SUCESS.....$N"
    fi
}
# dnf install mysql &>>$LOGFILE
# validate $? "install mysql"
dnf install dockerrr &>>$LOGFILE
validate $? "install docker"