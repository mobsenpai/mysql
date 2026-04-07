drop database if exists college;

create database college;
use college;

create table dept(dept_id int, dept_nm varchar(30) not null, dept_code varchar(10), primary key(dept_id), unique(dept_code));

insert into dept values
(101, 'BCA', '203'),
(102, 'BBA', '204'),
(103, 'BJMC', '205');


-- output
select * from dept;

create table student(stud_id int, roll int unique, name varchar(30), email varchar(20), dept_id int, foreign key(dept_id) references dept(dept_id));

insert into student values
(1001, 1, 'Yash', 'yash@gmail.com', 101),
(1002, 2, 'Aryan', 'aryan@gmail.com', 101),
(1003, 3, 'Preetam', 'preetam@yahoo.com', 102);

alter table student add primary key (stud_id);

-- output
select * from student;


create table course (course_id int, course_code char(5), primary key(course_id, course_code));

insert into course values
(1, 'CS101'),
(1, 'CS102'),
(2, 'CS101');

select * from course;
