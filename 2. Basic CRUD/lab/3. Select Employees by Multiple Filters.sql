SELECT	
	id,
	first_name,
	last_name,
	job_title,
	department_id,
	salary
FROM employees
WHERE
	department_id = 4
	--department_id IN (1, 3, 4)	--multiple filters with IN and NOT IN key words
	AND
	salary >= 1000			--salary BETWEEN 1000 AND 1500
	--OR
	--MORE FILTERS
ORDER BY 
	id;