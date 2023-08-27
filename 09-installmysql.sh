#!/bin/bash

#out program goal is install mysql

USERID=$(id -u)

if [ $USERID -ne 0]
then
    echo "error::please run this script as rooot user"
fi

yum install mysql -i