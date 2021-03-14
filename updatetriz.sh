#!/usr/bin/env bash

#TO COPY LATEST FILES TO MY LOCAL CSV FILES
start=216
stop=217

while [ $start != $stop ]
do
#COPY, FILTER AND APPEND TO CSV FILES
cat /home/kaseka/kdata/day_$start | grep "registration" >> /home/kaseka/kdata/myregs.csv
cat /home/kaseka/kdata/day_$start | grep "free_tree" >> /home/kaseka/kdata/myfreetriz.csv
cat /home/kaseka/kdata/day_$start | grep "super_tree" >> /home/kaseka/kdata/mysupertriz.csv
start=$((start+1))
done