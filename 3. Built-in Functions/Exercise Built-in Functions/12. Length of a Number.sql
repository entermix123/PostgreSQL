SELECT 
	population,
	LENGTH(CAST(population AS VARCHAR)) AS "Length"
FROM
	countries;