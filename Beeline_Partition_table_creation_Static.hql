SET hive.exec.dynamic.partition = false;
SET hive.exec.dynamic.partition.mode = strict;

CREATE EXTERNAL TABLE IF NOT EXISTS hiveAssignment1StatPart(Col2String1 String,Col3String2 String,Col4String3 String, col5 int, cal6 string) COMMENT 'hive assignment 1' PARTITIONED BY (StartDate Date) 
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '|'
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;


###############################################################################################################



LOAD DATA LOCAL INPATH '/home/cloudera/workspace/Parag/Assignment2/file_generated/hiveAssignment1' OVERWRITE INTO TABLE hiveAssignment1StatPart
Partition (startDate ='2017-12-03')
LOAD DATA LOCAL INPATH '/home/cloudera/workspace/Parag/Assignment2/file_generated/hiveAssignment1' OVERWRITE INTO TABLE hiveAssignment1StatPart
Partition (startDate ='2017-12-06')
LOAD DATA LOCAL INPATH '/home/cloudera/workspace/Parag/Assignment2/file_generated/hiveAssignment1' OVERWRITE INTO TABLE hiveAssignment1StatPart
Partition (startDate ='2017-12-09')
