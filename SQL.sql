-- Use a specific database
use DBName;

-- Show all available databases
show databases;

-- Show all available tables
show tables;

-- Show columns of a specific table
show columns from TblName;

-- Show columns of a specific table
desc TblName;

-- Show the creating SQL statement of a database
show create database DBName;

-- Show the creating SQL statement of a table
show create table TblName;

-- Search data in specific columns of a table
select Col1,...,Coln from TblName;

-- Search all data in a table
select * from TblName;

-- Search distinct data in a column of a table
select distinct Coln from TblName;

-- Search distinct data from multiple columns of a table
select distinct Col1,...,Coln from TblName;

-- Restrict the scope of result
select * from TblName limit n;
-- only display n rows of data(it't okay if only less than n rows of data exist)

-- Restrict the scope of result
select * from TblName limit m,n;
-- diaplsy n rows of data starting from row No.m (it's okay if only less than n rows of data exist)
-- SQL rows start from row No.0,which means select * from TblName limit 0,1 shows the first row but select * from TblName limit 0,1 shows the second

-- Use fully qualified name of columns and table
select TblName.ColName from DBName.TblName;

-- Rank the  result by one column
select * from TblName order by ColName;
-- the ranking column may not appear in the selected result, which means you can use sucn a sentence: select ColName1 from TblName order by ColName2

-- Rank the result by multiple columns
select * from TblName order by ColName1,ColName2,...,ColNamek;
-- rank the result first by ColName1,for the same things in ColName1,rank them using ColName2,and so forth

-- Rank by descending order
select * from TblName order by ColName1 desc, ColName2,...,ColNamek desc;
-- rank the result first by ColName1 by descending order, the by ColName2 by ascending order,...,then by ColNamek by descending order

-- Use order by to imitate max function
select max(ColName) from TblName order by ColName limit 1;
-- this equals to : select max(ColName) from TblName; 