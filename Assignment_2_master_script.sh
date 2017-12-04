
#!/bin/bash
clear

# Steps to create file for static partition

./Assignment_2_Static_table_feed_file_1.sh "2017-12-03" hivestaticpartitionfile1
./Assignment_2_Static_table_feed_file_1.sh "2017-12-06" hivestaticpartitionfile2
./Assignment_2_Static_table_feed_file_1.sh "2017-12-09" hivestaticpartitionfile3
echo "Static feed file created"
pause
#Steps to create file for dynamic partition

./Assignment_2_Dynamic_table_feed_file.sh
echo "Static table created adn data loaded created"
pause
# create & load data in a external table on date Static Partition


beeline -u jdbc:hive2://localhost:10000 username password -n hive -p hive -f /home/cloudera/workspace/Parag/Assignment2/Beeline_Partition_table_creation_Static.hql;
pause
# create & load data in a external table on date dynamic partition

beeline -u jdbc:hive2://localhost:10000 username password -n hive -p hive -f /home/cloudera/workspace/Parag/Assignment2/Beeline_Partition_table_creation_Dynamic.hql;
pause
