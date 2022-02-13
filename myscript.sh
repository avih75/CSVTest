#!/bin/sh 
ls
file="employees.csv/employees.csv"
pwd
echo "DROP TABLE [IF EXISTS] workers" | psql $5;

title=true;
while IFS=, read col1 col2 col3 col4 col5 col6 col7 col8 col9 col10 col11
do
    if title
    then
        echo "CREATE TABLE [IF NOT EXISTS] workers ('$col1' VARCHAR ( 50 ),'$col2' VARCHAR ( 50 ),'$col3' VARCHAR ( 50 ),'$col4' VARCHAR ( 50 ),'$col5' VARCHAR ( 50 ),'$col6' VARCHAR ( 50 ),'$col7' VARCHAR ( 50 ),'$col8' VARCHAR ( 50 ),'$col9' VARCHAR ( 50 ),'$col10' VARCHAR ( 50 ),'$col11' VARCHAR ( 50 ));"
        title=false;
    else
        echo "INSERT INTO workers (\"a\", \"b\", \"c\", \"d\", \"e\", \"f\", \"g\", \"h\", \"i\", \"j\", \"k\") VALUES ('$col1','$col2','$col3','$col4','$col5','$col6','$col7','$col8','$col9','$col10','$col11');"
done < $file | psql $5;
