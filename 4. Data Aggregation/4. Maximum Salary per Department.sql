SELECT
	department_id,
	MAX(salary) max_salaries
FROM
	employees
GROUP BY
	department_id
ORDER BY
	department_id