SELECT 
	id,
	concat( first_name, ' ',last_name) AS full_name,
	job_title, 
	salary
FROM employees
WHERE salary > 1000.00			--SELECT IF SALATY IS HIGHER THAN 1000.00
ORDER BY 				
	id ASC				--ORDER BY ID, SORTED ASCENDING