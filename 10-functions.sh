#!/bin/bash

#out program goal is install mysql

USERID=$(id -u)
# this functtion should validate the previous command and inform user it is success or failure
validate(){
#$1-->it will receive the arugement
if [ $USERID -ne 0 ]
then
    echo "$2 ---Failure"
    exit 1
else
    echo "$2 ..success"    
fi
}

if [ $USERID -ne 0 ]
then
    echo "error::pllease run the script with root access"
    exit 1
fi
#it is our resposisibily again to check installtion is success or not
yum install mysql -y

validate $? "installing my sl"

yum install  postfix -y

validate $? "installing postfix"