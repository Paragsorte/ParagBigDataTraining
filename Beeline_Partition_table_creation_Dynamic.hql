CREATE TABLE IF NOT EXISTS hiveAssignment1DynPArtstaging(STARTDATE DATE, Col2String1 String,Col3String2 String,Col4String3 String, col5 int, cal6 string) 
COMMENT 'hive assignment 1'
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '|'
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;

LOAD DATA LOCAL INPATH '/home/cloudera/workspace/Parag/Assignment2/file_generated/DynamicPartionhiveAssignment1' OVERWRITE INTO TABLE hiveAssignment1DynPArtstaging

CREATE EXTERNAL TABLE IF NOT EXISTS hiveAssignment1DynPArt(Col2String1 String,Col3String2 String,Col4String3 String, col5 int, col6 string) PARTITIONED BY (StartDate Date) 
COMMENT 'hive assignment 1'
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '|'
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;


############################################################################



INSERT INTO TABLE hiveAssignment1DynPArt
	PARTITION (Startdate)
        SELECT  Col2String1 ,
		Col3String2  ,
		Col4String3  ,
	        col5      ,
		col6     ,
		StartDate   ,
		 
	FROM hiveAssignment1DynPArtstaging;




