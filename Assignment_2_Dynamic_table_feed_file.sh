#  Local Path   :   /home/cloudera/workspace/Parag/Assignment2
# HDFS Path    :  hadoop fs -mkdir /user/hive//Assignment2/hiveAssignment1



#!/bin/bash
clear


# rm -r /home/cloudera/workspace/Parag/Assignment2/file_generated

cd /home/cloudera/workspace/Parag/Assignment2/file_generated

if [ "$?" != "0" ]; then
mkdir /home/cloudera/workspace/Parag/Assignment2/file_generated
fi

TodayDate="$(date +'%Y-%m-%d')"
for ((i = 1; i <= 900; i++))
do
if (( $i % 300 == 0))
then 
TodayDate=$(date +"%Y-%m-%d" -d "$(date) + $i day")
fi 
s=$TodayDate"|"string1"|"string2"|"string3
for ((k=1; k<=496; k++ ))
do
   s=$s"|"$k 
done
echo $s >> "DynamicPartionhiveAssignment1"
done
  
    
