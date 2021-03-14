#!/usr/bin/env bash

#LOADING LATEST CSV FILE MANUALLY

psql -U kaseka -d postgres -c "copy registration from '/home/kaseka/kdata/registration/all_new_registrations.csv' delimiter ' ';"
psql -U kaseka -d postgres -c "copy free_tree from '/home/kaseka/kdata/free_tree/all_new_freetrees.csv' delimiter ' ';"
psql -U kaseka -d postgres -c "copy super_tree from '/home/kaseka/kdata/super_tree/all_new_supertrees.csv' delimiter ' ';"

