#!/bin/sh 
ls
file="employees.csv/employees.csv"
pwd
echo "DROP TABLE IF EXISTS workers" | psql $5;
echo "CREATE TABLE workers (EMPLOYEE_ID VARCHAR ( 50 ),FIRST_NAME VARCHAR ( 50 ),LAST_NAME VARCHAR ( 50 ),EMAIL VARCHAR ( 50 ),PHONE_NUMBER VARCHAR ( 50 ),HIRE_DATE VARCHAR ( 50 ),JOB_ID VARCHAR ( 50 ),SALARY VARCHAR ( 50 ),COMMISSION_PCT VARCHAR ( 50 ),MANAGER_ID VARCHAR ( 50 ),DEPARTMENT_ID VARCHAR ( 50 ));" | psql $5;
title=true;
while IFS=, read col1 col2 col3 col4 col5 col6 col7 col8 col9 col10 col11
do
    if title
    then        
        title=false;
    else
        echo "INSERT INTO workers (\"a\", \"b\", \"c\", \"d\", \"e\", \"f\", \"g\", \"h\", \"i\", \"j\", \"k\") VALUES ('$col1','$col2','$col3','$col4','$col5','$col6','$col7','$col8','$col9','$col10','$col11');"
done < $file | psql $5;
