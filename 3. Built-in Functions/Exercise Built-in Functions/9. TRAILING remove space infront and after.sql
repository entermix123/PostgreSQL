SELECT 
	continent_name,
	TRIM(TRAILING FROM continent_name) AS "TRIM"
-- 	LTRIM(continent_name) AS "TRIM"	--from left
-- 	RTRIM(continent_name) AS "TRIM"	--from right
FROM
	continents