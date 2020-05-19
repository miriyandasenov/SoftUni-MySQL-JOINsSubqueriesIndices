select  min(av) AS min_average_salary
from ( select avg(salary) as av
              from employees
              group by department_id
     ) as embedded_q;