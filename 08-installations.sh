USER=$(id -u)

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

    echo "installation of mysql Failed...."
    exit 1
else
    echo "installation of mysql success..."
fi
dnf install git -y
if [ $? -ne 0 ]
then 
    echo "installation of git failed...."
    exit 1
else
    echo "installation of git sunccess..."
fi