#!/usr/bin/env bash


#IDENTIFY THE NEWEST FILE FOR DOWNLOAD FROM THE SERVER
last=$(ls -v /home/kaseka/kdata | grep "day_" | wc -l)
newfile=$((last+1))

#DOWNLOAD THE NEWEST FILE
wget 46.101.230.157/jds_october_2020/day_$newfile -P /home/kaseka/kdata

#EXTRACT THE 3 RELEVANT ENTRIES AND WRITE THEM TO THEIR RESPECTIVE CSV FILES. NOTE THAT WE ARE NOT APPENDING HERE.
cat /home/kaseka/kdata/day_$newfile | grep "registration" > /home/kaseka/kdata/registration/all_new_registrations.csv
cat /home/kaseka/kdata/day_$newfile | grep "free_tree" > /home/kaseka/kdata/free_tree/all_new_freetrees.csv
cat /home/kaseka/kdata/day_$newfile | grep "super_tree" > /home/kaseka/kdata/super_tree/all_new_supertrees.csv

#IMPORT THE CSV FILES INTO THE DB TO THEIR RESPECTIVE DB-TABLES
psql -U kaseka -d postgres -c "copy registration from '/home/kaseka/kdata/registration/all_new_registrations.csv' delimiter ' ';"
psql -U kaseka -d postgres -c "copy free_tree from '/home/kaseka/kdata/free_tree/all_new_freetrees.csv' delimiter ' ';"
psql -U kaseka -d postgres -c "copy super_tree from '/home/kaseka/kdata/super_tree/all_new_supertrees.csv' delimiter ' ';"