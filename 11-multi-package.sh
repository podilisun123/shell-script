USER=$(id -u)
TIME_STAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d ".",-1f)
LOGFILE=/tmp/${SCRIPT_NAME}-${LOGFILE}.log

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
if [ $USER -ne 0 ]
then
    echo "you should root privilage"
    exit 1
else
    echo "you are super user"
fi
validate(){
    if [ $1 -ne 0 ]
    then
        echo -e "$2 installation ..$R failure $N"
    else
        echo -e "$2 installation ..$G sucess $N"
    fi
}
for i in $@
do 
    dnf list installed $i  &>>$LOGFILE
    if [ $? -eq 0 ]
    then
        echo -e "$i is already installed ..$Y SKIPPING $N"
    else
        dnf install $i -y &>>$LOGFILE
        validate $? "$i installtion"
    fi
done
