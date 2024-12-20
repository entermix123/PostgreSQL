SELECT
    cl.full_name,
    COUNT(c.car_id) AS count_of_cars,
    SUM(c.bill) AS total_sum
FROM
    clients AS cl
JOIN
    courses AS c
ON cl.id = c.client_id
WHERE
    SUBSTRING(cl.full_name, 2, 1) LIKE 'a'
GROUP BY
    cl.full_name
HAVING
    COUNT(c.car_id) > 1
ORDER BY
    cl.full_name