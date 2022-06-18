select e.emp_no, e.first_name, e.last_name, t.title, t.from_date, t.to_date
into retirement_titles
from employees e
join titles t on e.emp_no = t.emp_no
where e.birth_date between '01/01/1952' and '12/31/1955'

select Distinct (e.emp_no), e.first_name, e.last_name, t.title, t.from_date, t.to_date
into unique_titles
from employees e
join titles t on e.emp_no = t.emp_no
where e.birth_date between '01/01/1952' and '12/31/1955' and t.to_date = '9999-01-01'
order by e.emp_no, t.to_date desc;

select count (emp_no), title
into retiring_titles 
from unique_titles
group by title
order by count desc

select distinct (e.emp_no), e.first_name, e.last_name, e.birth_date, d.from_date, d.to_date, t.title
into mentorship_eligibility
from employees e
join dept_emp d on e.emp_no = d.emp_no
join titles t on t.emp_no = e.emp_no
where t.to_date = '9999-01-01' and e.birth_date between '01/01/1965' and '12/31/1965'
order by e.emp_no


