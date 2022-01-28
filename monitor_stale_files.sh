#!/bin/bash

list_of_files=$(ls -d /d1/usr/ASXPROD/basheer_l/bench/spider/elk/*)
for _file in $list_of_files; do
 file_mod_time=$(date -r "$_file" +%s);
 n_days_ago=$(date -d 'now - 3 days' +%s)
 if (( file_mod_time <= n_days_ago )); then
   echo "$filename is older than 3 days";
 else
   echo "file is recent" ;
 fi
done
