SELECT
    name,
    phone_number,
    address,
    animal_id,
    department_id
FROM
    volunteers AS v
ORDER BY
    name ASC,
    animal_id ASC,
    department_id ASC;