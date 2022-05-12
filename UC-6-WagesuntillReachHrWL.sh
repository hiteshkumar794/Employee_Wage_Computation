#!/bin/bash -x
partTime=1
fullTime=2
maxRateInMonth=100
empRatePerHr=20
numOfWorkingDays=20
totalEmpHr=0
totalWorkingDays=0
randomCheck=$((RANDOM%3))

while [[ $totalEmpHr -lt $maxRateInMonth &&
 $totalWorkingDays -lt $numOfWorkingDays ]]
do
	((totalWorkingDays++))
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
	totalEmpHr=$(($totalEmpHr+$empHrs))
done

totalSalary=$(($totalEmpHr*$empRatePerHr))
