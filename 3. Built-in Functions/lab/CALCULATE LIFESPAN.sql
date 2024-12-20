SELECT
	CONCAT(first_name, ' ', last_name) AS full_name,
	coalesce(age(died, born)::varchar(30), concat('Alive: ', age(now(), born)::varchar(30))) AS lifespan
FROM 
	authors;