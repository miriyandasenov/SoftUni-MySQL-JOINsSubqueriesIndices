select c.country_code, m.mountain_range, p.peak_name, p.elevation
from countries as c
join mountains_countries as mc
on c.country_code = mc.country_code
join mountains as m
on mc.mountain_id = m.id
join peaks as p
on m.id = p.mountain_id
where c.country_code = 'BG' and p.elevation > 2835
order by p.elevation desc;