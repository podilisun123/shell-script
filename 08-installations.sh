USER=$(id -u)

if [ $USER -ne 0 ]
then
    echo "you should become super user"
    exit 1
else
    echo "you are super user"
fi
dnf install mysql -y
echo "installed"