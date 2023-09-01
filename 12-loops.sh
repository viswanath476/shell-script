#!/bin/bash

# all arg are in $@
for i in $@
do 
    yum install $i -y
done    