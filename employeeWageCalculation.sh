#!/bin/bash -x
echo "**********Welcome to Employee Wage Computation Program**********"

readonly partTimeEmployee=1
readonly fullTimeEmployee=2

empWagePerHr=20
numWorkingDays=20
employeeCheck=$(( RANDOM%3 ))
for ((day=1;day<=$numWorkingDays; day++ ))
do
   case $employeeCheck in
     $fullTimeEmployee)
                 empHrs=8 ;;
     $partTimeEmployee)
                 empHrs=4 ;;
     *)
                 empHrs=0 ;;
esac
     salary=$(($empHrs*$empWagePerHr));
     totalSalary=$(($totalSalary+$salary));
done

