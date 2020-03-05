#!/bin/bash -x
echo "Welcome to Employee Wage Computation Program"

#CONSTANTS
isEmployeePresent=1
randomCheck=$(( RANDOM%2 ))

if [ $isEmployeePresent -eq $randomCheck ]
then
    echo "employee is present"
else
    echo "employee is absent"
fi
