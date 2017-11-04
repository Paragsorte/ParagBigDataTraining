#!/bin/bash

clear
cd /home/cloudera/workspace/training

for  ((i=1; i<=10000; i++ ))
do
touch file$i
   for ((j=1; j<=2000; j++ ))
   do 
s=""
	for ((k=1; k<=50; k++ ))
	do
          s=$s" R"$j"C"$k
done
echo $s >> "file"$i
   done
	done


hadoop fs -copyFromLocal /home/cloudera/workspace/training/*  /user/hdfs/parag

hdfs dfs -ls /user/hdfs/parag


exit
