#!/bin/bash

#CHANGE THE NUMBER OF THREADS -p

#CHANGE THE SUBJECT OF THE EMAIL

#CHANGE THE EMAIL ADDRESS

#makes a list of files to feed to sstacks
for file in $(ls -1 ./rxstacks/*.tags.tsv.gz \
| grep -v catalog | perl -pe 's/\.tags\.tsv.gz//')
do
    sstacks -p 10 -b 1 -c ./rxstacks/batch_1 \
            -s $file \
            -o ./rxstacks/
done
mv nohup.out ./logs/rxsstacks.out
cat ./logs/rxsstacks.out | mail -s "m2M7 rxsstacks done" michelle.stuart@rutgers.edu
