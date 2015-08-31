#!/bin/bash

#CHANGE THE NUMBER OF THREADS -t - you can use ctrl-\ to search and replace

#CHANGE THE SUBJECT OF THE EMAIL

#CHANGE THE EMAIL ADDRESS

populations -b 1 -P ./rxstacks -s -t 10

mv nohup.out ./logs/popnofilter.out

cat ./logs/popnofilter.out | mail -s "popnofilter done m2M7" michelle.stuart@rutgers.edu

