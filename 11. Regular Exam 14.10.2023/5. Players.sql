SELECT
    CONCAT(p.first_name, ' ', p.last_name) AS full_name,
    age,
    hire_date
FROM
    players AS p
WHERE
    p.first_name LIKE 'M%'
ORDER BY
    age DESC,
    full_name;