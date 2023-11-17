INSERT INTO employees 
	(first_name, last_name, job_title, department_id, salary)
VALUES
	('Samantha', 'Young', 'Housekeeping', 4, '900'),
	('Roger', 'Palmer', 'Waiter', 3, '928.33');
	
SELECT * FROM employees
--RETURNING *					--RETURNING VISUALIZE ALL MADE CHANGES
--RETURNING IS USED WITH MANUAL COMMIT! RETURNING IS TO CHECK THE RESULT BEFORE COMMITMENT TO DB!