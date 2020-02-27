-- Ch03 

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







-- Ch04

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







-- Ch05

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

-- Search criteria/filter creteria
select ColName1,...,ColNamek from TblName where ColName1 = value;







-- Ch06

-- operators
-- = :equal to  
-- <>/!= :not equal to
-- < :less than
-- > :greater than
-- <= :less than or equal to
-- >= :greater than or eaual to
-- between A and B: between A and B (included)
-- is null : is null
-- is not null: is nnull







-- Ch07

-- And/Or/In/Not
select * from TblName where condition1 and condition2;
-- satisfy both of the conditions
select * from TblName where condition1 or condition2;
-- satisfy any of the conditions
select * from TblName where ColName in (val1,val2,...,valk);
-- it equals to : select * from TblName where ColName = val1 or ColName = val2 or ... or ColName = valk;
select * from TblName where ColName not in(val1,val2,...,valk);
-- not can be only used in three situations: not in / not between a and b / not exists







-- Ch08

-- Search pattern
select * from TblName where ColName like 'a%b_';
-- % is used to match any arbitrage character
-- _ is used to match exactly one arbitrage character
-- both % and _ cannot be used to match null







-- Ch09

-- Search according to regular expression
select  * from TblName where ColName  regexp Pattern;
-- ignore upper and lower case: regexp Pattern;
-- take upper and lower case into consideration: regexp binary Pattern;

-- \\f: next page
-- \\n: next line
-- \\r: enter
-- \\t: table
-- \\v: vertical table
-- *:{0,} 
-- +:{1,}
-- {n}: equal to n times
-- {n,}: greater than or equal to  n times
-- {m,n}: greater than or equal to m times, smaller than or equal to n times (m < n)

-- ^: begining of a line
-- $: ending of a line







-- Ch10

-- Concat columns
concat(str1,str2,...,strk) 
-- concat the k columns into a new column

-- Trim
trim(str)
-- remove the blanks in both left side and right side of the str
rtrim(str)
-- remove the blanks in the right side of the str
ltrim(str)
-- remove the blanks in the left side of the str

-- Use alias
select ColName as Alias...
select ColName Alias...
-- the word as can be omitted

-- NOW
now()
return the now datetime:  'YYYY-MM-DD HH:mm:SS'







-- Ch11

-- Text Function
left(str, n) 
-- return the first n characters as a substring of str
length(str) 
-- return the length of the str
locate(str, substr,n) 
-- return the first appearing place of substr in str, starting from the nth character in str; if substr in not in str, returns 0
lower(str) 
-- return the lower case of all characters in str
ltrim (str) 
-- remove all the blanks in the left side of str
right(str,n) 
-- return the last n charaters as a substring of str
rtrim(str) 
-- remove all the blanks in the right side of str
soundex(str) 
-- return all the strings with the same soud of str
substring(str, n,m) 
-- return a substring starting from the nth character in whose length is m characters
uppser(str) 
-- return the upper case of all characters in str

-- DateTime Function
adddate/date_add(datetime, interval number type)
-- examples of number type: 1 second/hour/day   or '1:1' minute_second  or '1 1' year_month/day_hour/day_minute/day_second
curdate()
-- return the current date 
curtime()
-- return the current time
now()
-- return the current datetime
date(datetime)
-- return the date of datetime
time(datetime)
-- return the time of datetime
year(datetime)/month(datetime)/day(datetime)/hour(datetime)/minute(datetime)/second(datetime)
-- return year/month/day/hour/minute/second of datetime
dayofweek(datetime)
-- return 1 to 7,sunday=1,...,saturday=7
dayofmonth(datetime)/dayofyear(datetime)
-- return day of month/year
datediff(datetime1,datetime2)
-- return datetim1 - datetime2
date_format(datetime,format)
-- return datetime in format
-- %Y=year e.g. 2020
-- %M = month e.g.january
-- %m= month e.g.1
-- %D=day e.g.21st
-- %d=day e.g.21
-- %T=time e.g.1:1:1
-- %H=hour e.g.23
-- %h=hour e.g.11
-- %i=minute
-- %s=second







-- Ch12

-- avg function
select avg(ColName) from TblName;
-- avg function ignores null value

-- count function
select count(*) from TblName;
select(ColName) from TblName;
-- count(*) doesn't ignore nuvalue
-- count(ColName) ignores null value

-- max function
select max(ColName) from TblName;
-- max function ignorese null value

-- min function
select min(ColName) from TblName;
-- min function ignores null value

-- sum function
select sum(ColName) from TblName;
-- sum function ignores null value

-- all and distinct
select avg(ColName) from TblName;
-- this means: select avg(all ColName) from TblName
-- for using only distinct values in the column, write like this: select(distinct ColName) from TblName







-- Ch13

-- Use group by
select ColName, avg(ColName) from TblName group by ColName;
-- multiple columns can be placed behind the group by
-- only columns behind the group by and aggregate functions can be used behind the select
-- if null is in the column behind group by, then a group called null is seperated in the result

-- Use with rollup to get cumulative information
select ColName ,count(*) from TblName group by ColName with rollup;
select case when ColName <=> null then 'Sum' else ColName end as ColName , count(*) from TblName group by ColName with rollup;
-- using only with rollup will generate a row of cumulative information entitled with null, the second line change the name of cumulative row to 'Sum'

-- Use having to filter group data
Select ColName from TblName group by ColName having condition1;

-- Sequence of SQL sentences
from -> join -> on -> where -> group by -> select -> having -> over() function -> order by ->limit







-- Ch14

-- Use select as imtermediresult
Select * from (Select * from TblName) tbl;
-- the alias (e.g. 'tbl') must be used 

-- Correlated subquery
where TblName1.ColName1 = TblName2.ColName1;
-- for column with same names in two tables, fully qualified name must be used to eliminate ambiguity







-- Ch15

-- Use table-joining selects
select ColName1,...,ColNamek from TblName1,TblName2 where condition1;
-- this equals to: select  ColNam1,...,ColNamek from TblName1 join TblName2 on condition1

-- Join multiple tables;
select ColName1,...,ColNamek from TblName1,...,TblNamen where condition1 and ... and conditionm

-- Join/Inner join/Cross join
InMySQL, join = inner join = cross join
In other DBMS, corss join cannot be used with on, it generates Cartesian product of tables







-- Ch16

-- Alias for Table
from TblName1 as t1, TblName2 t2
-- as can be omitted

-- Self join
select prod_id,prod_name from products where vend_id = (select vend_id from products where prod_id = 'DTNTR');
select p1.prod_id, p1.prod_name from products as p1, products as p2 where p1.vend_id = p2.vend_id and p2.prod_id = 'DTNTR';

-- Outer join
left join/left outer join : use the left table as base table
right join/right outer join: use the right table as base table







-- Ch17
-- Use union to cmobine multiple select sentences
select ColName from TblName1 union select ColName from TblName2;
select ColName from TblName1 union all select ColName from TblName2;
-- union deletes same rows from different select sentences
-- union all reserves all rows from every select sentence

-- Order by unions
select ColName from TblName1 union select ColName from TblName2 order by ColName;
-- order by reorders all rows from tresult







-- Ch18

-- Only MyISAM rather than InnoDB supports full-text search

-- Choose one column as index 
fulltext(ColName)

-- Full-text search
select * from TblName where match(ColName) against(StringPattern);

-- Full-text search with query expression
select * from TblName where match(ColName) against(StringPattern with query expansion);
-- setp1: do normal full-text search
-- step2: MySQL finds more StringPatterns from the resulting rows
-- step3: do normal full-text search with all StringPatterns

-- Boolean mode full-tesearch
select * from TblName where match(ColName) against(StringPattern in boolean mode);
-- + must included
-- - must nincluded
-- > include and increase rank
-- < include and decrease rank
-- () put words into expression
-- ~ cancel rank
-- * match end ofword
-- "" match words as a whole string
