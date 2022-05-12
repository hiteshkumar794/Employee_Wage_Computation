#!/bin/bash -x
isPartTime=1
isFullTime=2
empRatePerHr=20
RandomCheck=$((RANDOM%3))

if [ $isFullTime -eq $RandomCheck ]
then
	empHrs=8
elif [ $isPartTime -eq $RandomCheck ]
then
	empHrs=4
else
	empHrs=0
fi
salary=$(($empHrs*$empRatePerHr))
echo $salary
