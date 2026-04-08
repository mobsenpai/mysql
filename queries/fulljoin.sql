source joins.sql;

select 'full join all employees and all depts -' as '';
select employee.emp_nm, dept.dept_nm
from employee
left join dept
on employee.dept_id=dept.dept_id

union

select employee.emp_nm, dept.dept_nm
from employee
right join dept
on employee.dept_id=dept.dept_id;
