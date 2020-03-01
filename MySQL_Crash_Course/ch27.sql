show character set;

show collation;

show variables like 'character%';

show variables like 'collation%';

create table mytable(column1 int, column2 varchar(10)) default character set hebrew collate hebrew_general_ci;

create table mytable(column1 int, column2 varchar(10) character set latinl collate latinl_general_ci) default character set hebrew collate hebrew_general_ci;

select * from customers order by lastname, firstname collate latinl_general_ci;