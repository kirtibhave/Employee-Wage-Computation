#!/bin/bash -x
echo "**********Welcome to Employee Wage Computation Program**********"

#CONSTANTS
readonly EMPLOYEE_IS_PRESENT=1

#VARIABLES
empHrs=8
empWagePerHr=20

#Function is used to check employee is present or not
function calculateDailyEmployeeWage(){
randomCheck=$((RANDOM%2));
if [ $EMPLOYEE_IS_PRESENT -eq $randomCheck ]
then
	salary=$(($empHrs * $empWagePerHr))
else
	salary=0
fi
	echo "Daily employee wage is: $salary"
}
calculateDailyEmployeeWage
