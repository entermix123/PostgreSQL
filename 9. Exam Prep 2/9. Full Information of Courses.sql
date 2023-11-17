SELECT
    a.name AS address,
    CASE
        WHEN EXTRACT (HOUR FROM co.start) BETWEEN 6 AND 20 THEN 'Day'
        ELSE 'Night'
    END AS day_time,
    co.bill,
    cl.full_name,
    cr.make,
    cr.model,
    ct.name AS category_name
FROM
    courses AS co
JOIN
    clients AS cl
ON co.client_id = cl.id
JOIN
    cars AS cr
ON co.car_id = cr.id
JOIN
    categories AS ct
ON cr.category_id = ct.id
JOIN
    addresses AS a
ON co.from_address_id = a.id
ORDER BY
    co.id ASC;