#!/bin/bash

#CHANGE THE NUMBER OF THREADS -t

#CHANGE THE TITLE OF THE EMAIL

#CHANGE THE EMAIL ADDRESS

    rxstacks -b 1 \
-t 10 \
--conf_filter --conf_lim 0.25 \
--model_type bounded --bound_high 0.1 \
--prune_haplo \
--lnl_lim -8.0 --lnl_dist \
-P ./stacks \
-o ./rxstacks
mv nohup.out ./logs/rxstacks.out
cat ./logs/rxstacks.out | mail -s "m2M7-test rxstacks complete" michelle.stuart@rutgers.edu

