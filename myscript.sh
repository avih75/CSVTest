#!/bin/sh 
ls
file="/var/jenkins_home/workspace/Test/employees.csv"
pwd



while IFS=, read -r col1 col2
do
    echo "I got:$col1|$col2"
done < employees.csv

INPUT="employees.csv"
OLDIFS=$IFS
IFS=','
[ ! -f $INPUT ] && { echo "$INPUT file not found"; exit 99; }
while read flname dob ssn tel status
do
	echo "Name : $flname"
	echo "DOB : $dob"
	echo "SSN : $ssn"
	echo "Telephone : $tel"
	echo "Status : $status"
done < $INPUT
IFS=$OLDIFS
