source company.sql;

create table bonus (
    bonus_id int primary key auto_increment,
    emp_id int,
    bonus_amount decimal(10,2),
    bonus_date date,
    foreign key(emp_id) references employee(emp_id)
);

insert into bonus (emp_id, bonus_amount, bonus_date) values
(1, 5000.00, '2025-02-01');

insert into employee (emp_nm, salary, dept_id) value
('Connor', 35000.00, null);

insert into dept value
(103, 'Marketing', 'Ara');


-- inner join
-- employee with dept
-- select 'employees with deptartments -' as '';
-- select employee.emp_nm as employee_name, dept.dept_nm as department_name
-- from employee
-- inner join dept
-- on employee.dept_id=dept.dept_id;

-- same using alias
select 'employees with deptartments -' as '';
select e.emp_nm as name, e.salary,  d.dept_nm as department, d.location
from employee e
inner join dept d
on e.dept_id=d.dept_id;

-- left join
select 'all employees incl no dept -' as '';
select e.emp_nm as name, d.dept_nm as department
from employee e
left join dept d
on e.dept_id=d.dept_id;

-- right join
select 'all dept incl no employee' as '';
select e.emp_nm as name, d.dept_nm as department
from employee e
right join dept d
on e.dept_id=d.dept_id;
