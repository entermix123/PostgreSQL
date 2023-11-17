SELECT
	department_id,
	MIN(salary) min_salaries
FROM
	employees
GROUP BY
	department_id
ORDER BY
	department_id