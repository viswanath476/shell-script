#!/bin/bash

#out program goal is install mysql

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "error::please run this script as rooot user"
    exit 1
fi

yum install mysql -y

#it is our resposisibily again to check installtion is success or not
if [ $? -ne 0 ]
then
    echo "instead of mysql is error"
    exit 1
else
    echo "installtion of mysql is suuccess"
fi    