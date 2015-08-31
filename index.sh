#!/bin/bash

#CHANGE THE NAME OF THE DATABASE

#CHANGE THE SUBJECT OF THE EMAIL

#CHANGE THE EMAIL ADDRESS

index_radtags.pl -D m2M5_test_radtags -c -t

mv nohup.out logs/index.out

cat index.out | mail "index m2M5 done" michelle.stuart@rutgers.edu
