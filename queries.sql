select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from employees as e
join salaries as s
on e.emp_no = s.emp_no;

select first_name, last_name, hire_date
from employees
where hire_date between '1986-01-01' and '1986-12-31';

select dm.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
from employees as e
join dept_manager as dm
on e.emp_no = dm.emp_no
	join departments as d
	on d.dept_no = dm.dept_no;
		
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees as e
join dept_emp as de
on e.emp_no = de.emp_no
	join departments as d
	on de.dept_no = d.dept_no;
	
select first_name, last_name, sex
from employees
where first_name = 'Hercules'
	and last_name like 'B%';
	

	