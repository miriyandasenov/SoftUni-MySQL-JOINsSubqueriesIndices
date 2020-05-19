select e.employee_id, e.first_name, 
(case
	when year(p.start_date) < 2005 then p.name
        else null
end) as project_name
from employees as e
join employees_projects as ep
on e.employee_id = ep.employee_id
join projects as p
on ep.project_id = p.project_id
where e.employee_id = 24
order by `project_name`;