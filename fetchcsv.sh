#!/usr/bin/env bash

start=186
finish=187

while [ $start != $finish ]
do
#WRITE CONTENTS TO CSV FILE
cat /home/kaseka/kdata/registration/day_$start  > /home/kaseka/kdata/registration/all_new_registrations.csv
psql -U kaseka -d postgres -c "copy registration from '/home/kaseka/kdata/registration/all_new_registrations.csv' delimiter ' ';"

cat /home/kaseka/kdata/free_tree/day_$start  > /home/kaseka/kdata/free_tree/all_new_freetrees.csv
psql -U kaseka -d postgres -c "copy free_tree from '/home/kaseka/kdata/free_tree/all_new_freetrees.csv' delimiter ' ';"

cat /home/kaseka/kdata/super_tree/day_$start > /home/kaseka/kdata/super_tree/all_new_supertrees.csv
psql -U kaseka -d postgres -c "copy super_tree from '/home/kaseka/kdata/super_tree/all_new_supertrees.csv' delimiter ' ';"

start=$((start+1))
done




