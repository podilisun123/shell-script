#!/bin/bash
USER=$(id -u)
if [ $USER -ne 0 ]
then
    echo "run script file in root user"
else
    echo "you are super user"
fi