#!/bin/bash

#CHANGE THE NUMBER OF THREADS -t

#CHANGE THE NAME OF THE FILES

#CHANGE THE EMAIL SUBJECT

#CHANGE THE EMAIL ADDRESS

populations -b 1 -P ./rxstacks -s -t 25 -r 75 -m 5 --genepop

mv nohup.out logs/popr75m5.out

mv ./rxstacks/batch_1.genepop ./rxstacks/m2M7-r75m5.genepop
mv ./rxstacks/batch_1.haplotypes.tsv ./rxstacks/m2M7-r75m5.haplotypes.tsv
mv ./rxstacks/batch_1.hapstats.tsv ./rxstacks/m2M7-r75m5.hapstats.tsv 
mv ./rxstacks/batch_1.markers.tsv ./rxstacks/m2M7-r75m5.markers.tsv
mv ./rxstacks/batch_1.populations.log ./rxstacks/m2M7-r75m5.populations.log
mv ./rxstacks/batch_1.sumstats_summary.tsv ./rxstacks/m2M7-r75m5.sumstats_summary.tsv
mv ./rxstacks/batch_1.sumstats.tsv ./rxstacks/m2M7-r75m5.sumstats.tsv

cat ./logs/popr75m5.out | mail -s "m2M7 popr75m5 done"
