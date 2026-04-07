drop database if exists bca;

create database bca;
use bca;

create table dept (
    dept_id int primary key,
    dept_nm varchar(20)
);

insert into dept values
(1, 'HR'),
(2, 'IT'),
(3, 'Finance');

create table employee(emp_id int primary key auto_increment, emp_nm varchar(20), dept_id int, manager_id int);

insert into employee value
(101, 'Amit', 1, NULL);

insert into employee(emp_nm, dept_id, manager_id) values
('Neha', 2, 101),
('Puja', 3, 102),
('Rahul', 2, 101),
('Karan', 1, 101);


-- Self join
-- manager and employee ids reference each other
select e.emp_nm as employee, m.emp_nm as manager
from employee e
join employee m
on e.manager_id=m.emp_id;


-- Cross join
-- cartesian product
select dept.dept_nm as department, employee.emp_nm as employee
from dept
cross join employee
