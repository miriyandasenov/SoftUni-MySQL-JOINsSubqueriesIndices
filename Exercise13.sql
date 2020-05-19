select c.country_code, count(m.mountain_range) as mountain_range 
from countries as c
join mountains_countries as mc
on c.country_code = mc.country_code
join mountains as m
on mc.mountain_id = m.id
group by c.country_code
having c.country_code in ('BG', 'US', 'RU')
order by `mountain_range` desc;