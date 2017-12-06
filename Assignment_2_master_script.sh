#!/bin/bash
clear

# Steps to create file for static partition

#Create feed files for static partitions

./Assignment_2_Static_table_feed_file_1.sh "2017-12-03" hivestaticpartitionfile1
# ERROR HANDLING
if [ "$?" != "0" ]; then
echo "Error creting static feed file 1!" 1>&2
exit 1
fi

./Assignment_2_Static_table_feed_file_1.sh "2017-12-06" hivestaticpartitionfile2
# ERROR HANDLING
if [ "$?" = "1" ]; then
echo "Error creting static feed file 2!" 1>&2
exit 1
fi

./Assignment_2_Static_table_feed_file_1.sh "2017-12-09" hivestaticpartitionfile3
# ERROR HANDLING
if [ "$?" = "1" ]; then
echo "Error creting static feed file 3!" 1>&2
exit 1
fi

echo "3 Static feed files created"

# Steps to create file for dynamic partition

./Assignment_2_Dynamic_table_feed_file.sh

# ERROR HANDLING
if [ "$?" != "0" ]; then
echo "Error creating dynamic feed file!" 1>&2
exit 1
fi

echo "Dynamic feed file created"



# create & load data in a external table on date Static Partition

beeline -u jdbc:hive2://localhost:10000 username password -n hive -p hive -f /home/cloudera/workspace/Parag/Assignment2/Beeline_Partition_table_creation_Static.hql;

# ERROR HANDLING
if [ "$?" != "0" ]; then
echo "Error processing!" 1>&2
exit 1
fi

echo "Static Partition table created and data loaded"

# create & load data in a external table on date dynamic partition

beeline -u jdbc:hive2://localhost:10000 username password -n hive -p hive -f /home/cloudera/workspace/Parag/Assignment2/Beeline_Partition_table_creation_Dynamic.hql;

# ERROR HANDLING
if [ "$?" != "0" ]; then
echo "Error processing!" 1>&2
exit 1
fi
echo "dynamic Partition table created and data loaded"



exit





