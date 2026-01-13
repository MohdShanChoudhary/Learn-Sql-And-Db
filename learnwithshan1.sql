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


