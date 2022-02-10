#!/bin/sh 
ls
file="employees.csv/employees.csv"
pwd
apt-get install unzip apache2 php5 php5-gd php5-curl php5-pgsql postgresql-9.4 postgis postgresql-9.4-postgis-2.1 postgresql-contrib-9.4 tomcat8 git g++ php5-dev libgdal1-dev drush -y

while IFS=, read col1 col2 col3 col4 col5 col6 col7 col8 col9 col10 col11
do
    echo "INSERT INTO table_name (\"a\", \"b\", \"c\", \"d\", \"e\", \"f\", \"g\", \"h\", \"i\", \"j\", \"k\") VALUES ('$col1','$col2','$col3','$col4','$col5','$col6','$col7','$col8','$col9','$col10','$col11');"
done < $file | psql -U pg_user -d test;
