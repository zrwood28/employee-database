select e.emp_no, e.first_name, e.last_name, e.sex, s.salary
from employees as e
join salaries as s
on e.emp_no = s.emp_no;

select first_name, last_name, hire_date
from employees
where hire_date between '1986-01-01' and '1986-12-31';

select * from dept_manager;

select * from departments;

select * from employees;

select dm.dept_no, e.emp_no, e.last_name, e.first_name
from employees as e
join dept_manager as dm
on e.emp_no = dm.emp_no;