#!/usr/bin/env bash

--SORT FILES BY SUBJECT
start=1
end=186
filename=$start

while [ $start != $end ]
do
cat /home/kaseka/kdata/day_$filename | grep "registration" >> /home/kaseka/kdata/registration/day_$filename
cat /home/kaseka/kdata/day_$filename | grep "free_tree" >> /home/kaseka/kdata/free_tree/day_$filename
cat /home/kaseka/kdata/day_$filename | grep "super_tree" >> /home/kaseka/kdata/super_tree/day_$filename
start=$((start+1))
done

