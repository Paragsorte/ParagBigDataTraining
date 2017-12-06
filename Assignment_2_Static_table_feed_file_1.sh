#  Local Path   :   /home/cloudera/workspace/Parag/Assignment2
# HDFS Path    :  hadoop fs -mkdir /user/hive//Assignment2/hiveAssignment1



#!/bin/bash
clear

cd /home/cloudera/workspace/Parag/Assignment2/file_generated

if [ "$?" != "0" ]; then
mkdir /home/cloudera/workspace/Parag/Assignment2/file_generated
fi

TodayDate=$1
for ((i = 1; i <= 900; i++))
do
s=$TodayDate"|"string1"|"string2"|"string3
for ((k=1; k<=496; k++ ))
do
   s=$s"|"$k 
done
echo $s >> $2
done
  
    
