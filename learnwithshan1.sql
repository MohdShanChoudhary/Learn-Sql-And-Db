create database LearnSql;
-- use learnsql;   this command is work in mysql only 

create table student (name char(20)
,student_id int ,
age int,
grade char(1));

insert  into student (name , student_id , age , grade)
values ('shan',
1,
21,'A');


insert  into student (name , student_id , age , grade)
values 
('rih',
3,
22,
'A')   , ('han',
4,
22,
'A')         ;



select * from student;
select name from student;

-- insert some data 
insert into student (name, student_id) values ('only name ',001);

select * from student;


select name from student;
select * from student where  student_id<=1;
select * from student where  student_id=1;

-- update 
update student 
set age =100 where name='shan';

select * from student;


-- delete 
delete from student 
where name = 'rihan';

select * from student ;


-- insert without   topics / arguments 
insert into student values ('mohammadshan ', 9,32,'M');

select * from student ;


-- -- data types 
-- 🔢 1. Numeric Data Types
-- Data Type	Description	Example
-- INT / INTEGER	Whole numbers	10, -5
-- SMALLINT	Smaller whole numbers	100
-- BIGINT	Very large integers	987654321
-- DECIMAL(p,s)	Fixed-point numbers	DECIMAL(10,2)
-- NUMERIC(p,s)	Same as DECIMAL	123.45
-- FLOAT	Approximate decimals	3.14
-- REAL	Floating-point number	2.5
-- 🔤 2. Character / String Data Types
-- Data Type	Description	Example
-- CHAR(n)	Fixed-length string	CHAR(10)
-- VARCHAR(n)	Variable-length string	VARCHAR(100)
-- TEXT	Long text	Description
-- 📅 3. Date & Time Data Types
-- Data Type	Description	Example
-- DATE	Date only	2026-01-14
-- TIME	Time only	10:30:00
-- DATETIME	Date + time	2026-01-14 10:30
-- TIMESTAMP	Auto date & time	CURRENT_TIMESTAMP
-- ✅ 4. Boolean Data Type
-- Data Type	Description
-- BOOLEAN / BOOL	TRUE or FALSE
-- 🗂️ 5. Binary Data Types
-- Data Type	Description
-- BINARY	Fixed-length binary
-- VARBINARY	Variable binary
-- BLOB	Binary Large Object (images, files)
-- 🆔 6. Other Important Data Types
-- Data Type	Description
-- ENUM	Predefined values
-- SET	Multiple values
-- UUID	Unique identifier
-- JSON	JSON formatted data

-- postgrese have one specail data dtpe (serial ) is is use for auto generate id mainly 

create table numbers (id serial , name varchar(20));
insert into numbers (name)
values ('shan');
insert into numbers (name ) values ('okshan');
select * from numbers;



