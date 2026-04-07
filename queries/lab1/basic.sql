drop database if exists bca;

create database bca;
use bca;

create table student(roll int, name varchar(30), m_no char(10), city varchar(30));

desc student;

insert into student values
(1, 'Raj', '7171717171', 'Patna'),
(2, 'Rahul', '8181818181', 'Ara'),
(3, 'Sumit', '9191919191', 'Pune'),
(4, 'Aryan', '1010101010', 'Purnia');

select * from student;
