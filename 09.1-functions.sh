#!/bin/bash
USER=$(id -u)
TIME_STAMP=$(date +%F-%H-%M-%S)
echo "time stamp is ${TIME_STAMP}"
# R="\e[31m"
# G="\e[32m"
# N="\e[0m"
# if [ $USER -ne 0 ]
# then
#     echo "run script file in root user"
# else
#     echo "you are super user"
# fi

# validate(){
#     if [ $1 -ne 0 ]
#     then
#         echo -e "$2 is $RFAILED......$N"
#     else
#         echo "$2 is $G SUCESS.....$N"
# }
# dnf install mysql
# validate $? ${install mysql}
# dnf install dockerrr
# validate $? ${install docker}