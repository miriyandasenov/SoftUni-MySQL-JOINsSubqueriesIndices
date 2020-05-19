select continent_code, currency_code, count(country_name) as `currency_usage`
from countries as c1 
group by continent_code, currency_code
having `currency_usage` = (
			select count(country_code) as `count`
			from countries as c2
			where c2.continent_code = c1.continent_code
			group by currency_code
			order by `count` desc
			limit 1
			)
and `currency_usage` > 1
order by continent_code, currency_code;