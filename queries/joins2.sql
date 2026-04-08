-- self and cross join
source company.sql;

alter table employee
    add manager_id int,
    add foreign key(manager_id) references employee(emp_id);

update employee set manager_id=1 where emp_id=2;

-- select * from employee;

-- self join
select 'employees with their managers -' as '';
select e.emp_nm as name, m.emp_nm as manager
from employee e
join employee m
on e.manager_id=m.emp_id;

-- cross join
select 'employees and dept -' as '';
select e.emp_nm, d.dept_nm
from employee e
cross join dept d
order by e.emp_id, d.dept_id;
-- understanding order by here
-- it says first soft by emp_id so rows get sorted by emp ids, not when we have two rows with same emp_id (due to cross join), then use the dept_id to sort them, so its like that priority of sorting
