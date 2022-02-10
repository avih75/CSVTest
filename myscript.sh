#!/bin/sh 
ls
file="employees.csv"
pwd

INPUT= employees.csv
OLDIFS=$IFS
IFS=,
[ ! -f $INPUT ] && { echo "$INPUT file not found"; exit 99; }
while read site post subject usr status
do
    echo "Site : $site"
    echo "Post : $post"
    echo "Subject : $subject"
    echo "User : $usr"
    echo "Status : $status"
done < $INPUT
IFS=$OLDIFS
