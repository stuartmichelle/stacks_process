#!/bin/bash

i=1
for file in ./samples/*.fq.gz
do
	ustacks -t gzfastq -p 20 -m 2 -M 7 -d -r -i $i \
-f ${file} -o ./stacks
    let "i+=1";
done

mv nohup.out ./logs/ustacks.out
cat ./logs/ustacks.out | mail -s "m2M7-test ustacks complete" michelle.stuart@rutgers.edu
