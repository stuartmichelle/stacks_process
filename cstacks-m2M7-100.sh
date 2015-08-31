#!/bin/bash

#copy and paste from the google doc ligationID column to create this files list

files="
APCL13_227L0262
APCL13_247L0280
APCL13_252L0285
APCL13_253L0286
APCL13_309L0340
APCL13_314L0345
APCL13_331L0356
APCL13_338L0360
APCL13_356L0373
APCL13_359L0375
APCL13_362L0377
APCL13_388L0398
APCL13_044L0416
APCL13_045L0417
APCL13_087L0424
APCL13_101L0428
APCL13_109L0429
APCL13_111L0430
APCL13_119L0432
APCL13_119L0433
APCL13_130L0434
APCL13_136L0435
APCL13_148L0437
APCL13_154L0438
APCL13_156L0439
APCL13_182L0444
APCL13_192L0445
APCL14_105L0751
APCL14_134L0752
APCL14_239L0755
APCL14_242L0756
APCL14_248L0757
APCL14_409L0759
APCL14_418L0762
APCL14_432L0763
APCL14_546L0769
APCL14_039L0777
APCL13_480L0855
APCL13_589L0879
APCL13_603L0882
APCL13_612L0883
APCL13_615L0884
APCL13_616L0885
APCL13_618L0886
APCL13_624L0887
APCL13_636L0888
APCL13_638L0889
APCL13_644L0890
APCL13_649L0891
APCL14_115L0904
APCL14_123L0905
APCL14_144L0907
APCL14_156L0908
APCL14_158L0909
APCL14_185L0914
APCL14_202L0915
APCL14_210L0916
APCL14_211L0917
APCL14_040L0918
APCL14_041L0919
APCL14_052L0920
APCL14_060L0921
APCL14_088L0922
APCL14_095L0923
APCL14_098L0924
APCL14_101L0925
APCL13_057L1040
APCL13_158L1105
APCL14_277L1186
APCL14_299L1189
APCL14_261L1191
APCL14_285L1201
APCL14_286L1202
APCL14_287L1203
APCL14_055L1232
APCL14_038L1243
APCL13_468L1269
APCL14_235L1279
APCL14_245L1280
APCL14_389L1281
APCL14_227L1289
APCL14_034L1290
APCL14_037L1293
APCL14_218L1299
APCL14_318L1300
APCL13_475L1310
APCL13_484L1311
APCL13_546L1315
APCL14_214L1322
APCL14_182L1324
APCL14_099L1330
APCL14_193L1333
APCL14_423L1341
APCL14_440L1347
APCL13_048L1596
APCL13_430L1637
APCL13_426L1674
APCL13_005L1675
APCL14_489L1677
APCL14_502L1679"

# Use a loop to create a list of files to supply to cstacks.

samp=""
for file in $files
do 
    samp+="-s ./$file ";
done

cstacks -b 1 -o ./ -n 7 -p 25 $samp

mv nohup.out ./cstacks.out

cat ./cstacks.out | mail -s "cstacks complete" michelle.stuart@rutgers.edu
