#!/bin/bash

DATE=$(date +%F)
LOGSDIR=/home/centos/shellscript-logs
SCRIPT_NAME=$0
LOGFILE=$LOGSDIR/$0-$DATE.log
USERID=$(id-u)
R="\e[31"
G="\e[32m"
N="\e[0m"
Y="\e[33m"

if [ $USERID -ne 0 ];
then
    echo -e "$R ERROR:: please run this script with root access $N"
    exit 1
fi

VALIDATE(){
    if [$1 -ne 0 ];
    then
        echo -e "$R installing $2 ... $R FAILURE $N"
        exit 1
     else
        echo -e "$G installing $2 ... $G success $N"  

    fi    
}

# all arg are in $@

for i in $@
do 
    yum list installed $i &>>$LOGFILE
    if [ $? -ne 0 ]
    then
        echo "$i is not installed, let's install it"
        yum install $i -y &>>$LOGFILE
        VALIDATE $? "$i"
    else
        echo -e "$Y $i is already installed $N"
    fi    

done    