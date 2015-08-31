#!/bin/bash

for file in $(ls -1 ./stacks/*.tags.tsv.gz \
| grep -v catalog | perl -pe 's/\.tags\.tsv.gz//')
do
    sstacks -p 10 -b 1 -c ./stacks/batch_1 \
            -s $file \
            -o ./stacks/
done

mv nohup.out ./logs/sstacks.out

cat ./logs/sstacks.out | mail -s "m2M7-test sstacks complete" michelle.stuart@rutgers.edu

