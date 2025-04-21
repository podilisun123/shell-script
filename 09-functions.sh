USER=$(id -u)
SCRIPT_FILE=$(echo $0 | cut -d "." -f1)

if [ $USER -ne 0 ]
then
    echo "you should take root privilage"
    exit 1
else
    echo "you are super user"
fi

dnf install mysql -y