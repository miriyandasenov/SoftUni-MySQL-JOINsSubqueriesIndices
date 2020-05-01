SELECT t.town_id, t.name, a.address_text
FROM towns AS t JOIN addresses AS a
ON a.town_id = t.town_id
WHERE a.town_id IN (9,15,32)
ORDER BY t.town_id;