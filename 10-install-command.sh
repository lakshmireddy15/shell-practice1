#!/bin/bash

# id -u ----> It will give out other than 0
# sudo id -u ----> It will give 0 means this is root user
# echo $? ----> It is 0 means sucess other than 0 means failure

USERID=$(id -u)
if [ $USERID -ne 0 ]
then
    echo "ERROR: Please run with root acess"
    exit 1
else
    echo "Running with root user"
fi

dnf list installed mysql
# It checks list mysql is available or not
# echo $?=0 means installed or other tha 0 means not installed
if [ $? -ne 0 ]
then 
    echo " mysql is not installed ...going to install"
    dnf install mysql -y 
    if [ $? -eq 0 ]
    then
        echo " Installing mysql..."
    else
        echo "Not installing mysql"
        exit 1
    fi
else
    echo "Mysql is already installed "
fi


