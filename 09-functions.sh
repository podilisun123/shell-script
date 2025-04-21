USER=$(id -u)
TIME_STAMP=$(date +date +%F-%H-%M-%S)
SCRIPT_FILE=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp-${SCRIPT_FILE}-${TIME_STAMP}.log

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"


if [ $USER -ne 0 ]
then
    echo "you should take root privilage"
    exit 1
else
    echo "you are super user"
fi
validate(){
    if [ $1 -ne 0 ]
    then 
        echo -e " $2 ...$R Failure $N"
    else 
        echo -e "$2 ...$G Success $N"
    fi
}

dnf install mysqll -y &>>LOGFILE
validate $? "installing mysql"

dnf install git -y &>>LOGFILE
validate $? "installing git"