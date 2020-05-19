select count(countr_count) as country_count
from (select c.country_code as countr_count, mc.mountain_id
      from countries as c
      left join mountains_countries as mc
      on c.country_code = mc.country_code
      where mc.mountain_id is null) as emb_q;