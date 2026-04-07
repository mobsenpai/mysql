drop database if exists col;

create database col;
use col;

create table student(stud_id int primary key, stud_nm varchar(30), course_id int);
create table course(course_id int primary key, course_nm char(20));

insert into student values
(1, 'Yash', 301),
(2, 'Aryan', 301),
(3, 'Pritam', 302),
(4, 'Rudra', 301),
(5, 'Prishu', NULL);

insert into course values
(301, 'BCA'),
(302, 'BBA'),
(303, 'B.Com');

-- Inner join
-- Common on both tables
select student.stud_nm, course.course_nm
from student
inner join course
on student.course_id=course.course_id;


-- Left join
-- All rows of left table, and matched rows from right table
select student.stud_nm, course.course_nm
from student
left join course
on student.course_id=course.course_id;


-- Right join
-- All rows from right table, and matched rows from left table
select student.stud_nm, course.course_nm
from student
right join course
on student.course_id=course.course_id;

-- Full join
-- Doesn't work in mysql, use left join union right join instead
-- (also to make it short i used alias)
select s.stud_nm, c.course_nm
from student s
left join course c
on s.course_id=c.course_id

union

select s.stud_nm, c.course_nm
from student s
right join course c
on s.course_id=c.course_id;
