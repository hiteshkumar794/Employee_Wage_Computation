#!/bin/bash -x
present=1
randomcheck=$((RANDOM%2))
if [ $present -eq $randomcheck ]
then
	EmpRPH=20
	EmpHrs=8
	salary=$(($EmpHrs*$EmpRPH))
	echo $salary
else
	salary=0
	echo $salary
fi
