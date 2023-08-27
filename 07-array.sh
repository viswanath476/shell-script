#!/bin/bash

#this is called array,instead of single value it can hold multiple values
PERSONS=("navya" "bhavya" "sravya" "saanvi")
#inside array we always refer values with index and it starts from 0

echo "first person: ${PERSONS[0]}"

echo "first person: ${PERSONS[@]}"