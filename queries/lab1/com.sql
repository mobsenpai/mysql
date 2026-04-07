drop database if exists com;

create database com;
use com;

create table employee(emp_id int primary key auto_increment, emp_nm varchar(30), dept_id int);


insert into employee(emp_nm, dept_id) values
('Yash', 101),
('Rudra', 102),
('Aryan', 101),
('Pritam', 103);
 
create table department(dept_id int primary key, dept_nm varchar(20));

insert into department values
(101, 'HR'),
(102, 'IT'),
(103, 'Finance');


-- view: virtual (logical) table, created using select
create view emp_view as
select employee.emp_nm, dept_id
from employee;

select * from emp_view;


create view emp_dept_view as
select employee.emp_nm, department.dept_nm
from employee
inner join department
on employee.dept_id=department.dept_id;

select * from emp_dept_view;
