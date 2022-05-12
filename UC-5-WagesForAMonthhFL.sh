#!/bin/bash -x

partTime=1
fullTime=2
totalSalary=0
numOfWorkingDays=20
empRatePerHr=20
randomCheck=$((RANDOM%3))
for (( day=1; day<=$numOfWorkingDays; day++))
do
	case $randomCheck in
		$fullTime )
			empHrs=8
		;;
		$partTime )
			empHrs=4
		;;
		* )
			empHrs=0
		;;
	esac
	salary=$(($empHrs*$empRatePerHr))
	totalSalary=$(($totalSalary+$salary))
done
