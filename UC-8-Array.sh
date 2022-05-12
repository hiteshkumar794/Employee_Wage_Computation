#!/bin/bash -x
partTime=1
fullTime=2
maxHrsInMonth=100
empRatePerHr=20
numOfWorkingDays=20

totalEmpHr=0
totalWorkingDays=0

function getWorkingHours( )
{
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

}

function getEmpWage()
{
	echo $(($totalEmpHr*$empRatePerHr))
}

while [[ $totalEmpHr -lt $maxHrsInMonth &&
	$totalworkingDays -lt $numOfWorkingDays ]]

do
	((totalWorkingDays++))
	randomCheck=$((RANDOM%3))
	getWorkingHours $randomCheck
	totalEmpHr=$(($totalEmpHr+$empHrs))
	dailyWages[$totalWorkingDays]=$(($empHrs*$empRatePerHr))
done

totalSalary="$( getEmpWage $totalEmpHr )"
echo ${dailyWages[@]}
