#!/bin/bash -x
echo "**********Welcome to Employee Wage Computation Program**********"

#CONSTANTS
FullTimeEmployee=1
PartTimeEmployee=2

#VARIABLES
empHrs=8
empWagePerHr=20

employeeCheck=$((RANDOM%3));
case $employeeCheck in
     $FullTimeEmployee)
						empHrs=8 ;;
     $PartTimeEmployee)
						empHrs=4 ;;
     *)
						empHrs=0 ;;
esac
     salary=$(($empHrs*$empWagePerHr));
