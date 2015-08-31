#!/bin/bash
process_radtags -b ../logs/barcodes -c -q --renz_1 pstI --renz_2 mluCI \
-i gzfastq --adapter_1 ACACTCTTTCCCTACACGACGCTCTTCCGATCT \
-f ../bcsplit/P033.fastq.gz -o ./
mv process_radtags.log ../logs/33process.out
cat ./logs/30process.out | mail -s "process 33 complete" michelle.stuart@rutgers.edu
