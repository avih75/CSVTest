#!/bin/sh 
ls
file="employees.csv"
pwd
cat $(employees.csv)
INPUT= employees.csv
OLDIFS=$IFS
IFS=,
[ ! -f $file ] && { echo "$file file not found"; exit 99; }
while read site post subject usr status
do
    echo "Site : $site"
    echo "Post : $post"
    echo "Subject : $subject"
    echo "User : $usr"
    echo "Status : $status"
done < $file
IFS=$OLDIFS
