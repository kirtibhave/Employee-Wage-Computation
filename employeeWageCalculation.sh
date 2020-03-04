#!/bin/bash
echo "**********Welcome to Employee Wage Computation Program**********"

#CONSTANTS
readonly EMPLOYEE_IS_PRESENT=1

#Function is used to check employee is present or not
function checkPresentOrAbsent(){
randomCheck=$((RANDOM%2));
	if [ $EMPLOYEE_IS_PRESENT -eq $randomCheck ]
	then
		echo "employee is present"
	else
		echo "employee is absent"
	fi
}

checkPresentOrAbsent
