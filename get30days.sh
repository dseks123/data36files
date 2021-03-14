#!/usr/bin/env bash

#TO GENERATE CSV FILE OF THE FIRST 30 DAYS
start=1
end=31
while [ $start != $end ]
do
cat /home/kaseka/kdata/free_tree/day_$start >> /home/kaseka/kdata/free_tree/first30days.csv
start=$((start+1))
done