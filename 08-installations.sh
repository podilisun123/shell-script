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

    echo "installed Failed...."
    exit 1
else
    echo "installed success..."
fi
dnf install git -y
if [ $? -ne 0 ]
then 
    echo "installed failed...."
    exit 1
else
    echo "installed sunccess...
fi