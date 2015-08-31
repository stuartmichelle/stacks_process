#!/bin/bash

#copy and paste from the google doc ligationID column to create this files list

files="
APCL13_031L0410
APCL13_032L1025
APCL13_048L0881
APCL13_048L1032
APCL13_102L1071
APCL13_120L1084
APCL13_131L1092
APCL13_184L1080
APCL13_209L1048
APCL13_226L0261
APCL13_269L0302
APCL13_408L0409
APCL13_640L1231
APCL14_052L0920
APCL14_060L0921
APCL14_088L0922
APCL14_101L0925
APCL14_211L0917
APCL14_552L1247"

samp=""
for file in $files
do 
    samp+="./$file.* ";
done
cp $samp ~/01-m2M7-test/samples
