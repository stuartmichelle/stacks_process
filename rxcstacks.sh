#!/bin/bash

for file in $(ls -1 ./rxstacks/*.tags.tsv.gz \
| perl -pe 's/\.tags.tsv.gz//')
do 
    samp+="-s $file ";
done

cstacks -b 1 -o ./rxstacks -n 7 -p 10 $samp

mv nohup.out ./logs/rxcstacks.out
cat ./logs/rxcstacks.out | mail -s "m2M7-test rxcstacks complete" michelle.stuart@rutgers.edu
