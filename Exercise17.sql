select  c.country_name,  
	max(p.elevation) as highest_peak_elevation,
        max(r.length) as longest_river_length
from countries as c
left join mountains_countries as mc
on c.country_code = mc.country_code
join mountains as m
on mc.mountain_id = m.id
join peaks as p
on p.mountain_id = m.id
left join countries_rivers as cr
on c.country_code = cr.country_code
join rivers as r
on r.id = cr.river_id
group by c.country_code
order by `highest_peak_elevation` desc, 
	 `longest_river_length` desc, 
	 c.country_name
limit 5;