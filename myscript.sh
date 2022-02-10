#!/bin/sh 
ls
file="employees.csv/employees.csv"
pwd

while IFS=, read col1 col2 col3 col4 col5 col6 col7 col8 col9 col10 col11
do
    echo "INSERT INTO table_name (\"a\", \"b\", \"c\", \"d\", \"e\", \"f\", \"g\", \"h\", \"i\", \"j\", \"k\") VALUES ('$col1','$col2','$col3','$col4','$col5','$col6','$col7','$col8','$col9','$col10','$col11');"
done < $file | psql -h "ec2-15-228-193-93.sa-east-1.compute.amazonaws.com" -p 5432 -U postgres -w;
