#!/bin/bash
#CHANGE -n TO MATCH -M FROM USTACKS


for file in $(ls -1 ./stacks/*.tags.tsv.gz \
| perl -pe 's/\.tags.tsv.gz//')
do 
    samp+="-s $file ";
done

cstacks -b 1 -o ./stacks -n 7 -p 20 $samp

mv nohup.out ./logs/cstacks.out
cat ./logs/cstacks.out | mail -s "m2M7-test cstacks complete" michelle.stuart@rutgers.edu
