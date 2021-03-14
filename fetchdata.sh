#!/usr/bin/env bash



start=1
end=186
while [ $start != $end ]
do
--DOWNLOAD FILES
wget 46.101.230.157/jds_october_2020/day_$start -P /home/kaseka/kdata

--SORT FILES BY CONTENT

cat /home/kaseka/kdata/day_$start | grep "registration" >> /home/kaseka/kdata/registration/day_$start
cat /home/kaseka/kdata/day_$start | grep "free_tree" >> /home/kaseka/kdata/free_tree/day_$start
cat /home/kaseka/kdata/day_$start | grep "super_tree" >> /home/kaseka/kdata/super_tree/day_$start
start=$((start+1))
done