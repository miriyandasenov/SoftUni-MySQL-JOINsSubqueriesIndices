select e.employee_id, 
       concat(e.first_name, ' ', e.last_name) as employee_name, 
       concat(m.first_name, ' ', m.last_name) as manager_name,
       d.name as department_name
from employees as e
join employees as m
on m.employee_id = e.manager_id
join departments as d
on e.department_id = d.department_id
order by e.employee_id
limit 5;