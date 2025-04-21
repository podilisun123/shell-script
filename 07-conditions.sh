#!/bin/bash
read -p "enter number1:" NUMBER1

if [ $NUMBER1 -ge 10 ]
then 
    echo "your entered number is ${NUMBER1} greater than 10 "
else
    echo "your entered number is ${NUMBER1} less than 10"
fi