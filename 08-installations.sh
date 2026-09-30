USER=$(id -u)
R=\e[31m
G=\e[32m
N=\e[0m

if [ $USER -ne 0 ]
then
    echo "you should become super user"
    exit 1
else
    echo "you are super user"
fi

dnf install mysql -y
if [ $? -ne 0 ]
then
    echo -e "installation of mysql $R Failed....$N"
    exit 1
else
    echo -e "installation of mysql $G success...$N"
fi
dnf install git -y
if [ $? -ne 0 ]
then 
    echo -e "installation of git $R failed....$N"
    exit 1
else
    echo -e "installation of git $G sunccess...$N"
fi