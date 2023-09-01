#!/bin/bash

USERID=$(id-u)
R="\e[31"
N="\e[0m"

if [ $USERID -ne 0 ];
then
    echo -e "$R ERROR:: please run this script with root access $N"
    exit1
    
# all arg are in $@
for i in $@
do 
    yum install $i -y
done    