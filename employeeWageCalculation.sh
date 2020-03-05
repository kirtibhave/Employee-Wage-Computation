#!/bin/bash -x
echo "**********Welcome to Employee Wage Computation Program**********"

#CONSTANTS
FULL_TIME_EMPLOYEE=2
PART_TIME_EMPLOYEE=1
NUM_OF_WORKING_DAYS=20
EMP_WAGE_PER_HR=20
MAX_HRS_IN_MONTH=100

#VARIABLES
totalEmpHrs=0
totalWorkingDays=0
totalSalary=0

#Function is used to get employee hours
function getWorkingHours() {
	case $1 in
		$FULL_TIME_EMPLOYEE)
			empHrs=8 ;;
		$PART_TIME_EMPLOYEE)
			empHrs=4 ;;
		*)
			empHrs=0 ;;
	esac
     echo $empHrs
}

while [[ $totalEmpHrs -lt $MAX_HRS_IN_MONTH && $totalWorkingDays -lt $NUM_OF_WORKING_DAYS ]]
do
        ((totalWorkinDays++))
        empHrs="$( getWorkingHours $((RANDOM%3)) )"
        totalEmpHrs=$(($totalEmpHrs+$empHrs))
done
        totalSalary=$(($totalEmpHrs*$EMP_WAGE_PER_HR))



