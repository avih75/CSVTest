#!/bin/sh 
ls
file="employees.csv"
pwd

while read f1 f2 f3
do
        echo "OS is     : $f1"
        echo "Company is: $f2"
        echo "Value is  : $f3"
done < $file


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
