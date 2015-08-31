#!/bin/bash

# - you can use ctrl-\ to search and replace

#ADD YOUR MYSQL PASSWORD IN TWO PLACES

#CHANGE	NAME OF THE DATABASE IN THREE PLACES BELOW

#CHANGE	THE SUBJECT OF THE EMAIL

#CHANGE	THE EMAIL ADDRESS

echo "create database m2M7_test_radtags" | mysql -p

mysql -p m2M7_test_radtags < /local/opt/stacks-1.29/sql/stacks.sql

load_radtags.pl -D m2M7_test_radtags -p ./rxstacks -b 1 \
-t population -c -B

mv nohup.out ./logs/load.out

cat ./logs/load.out | mail -s "load done m2M7" michelle.stuart@rutgers.edu
