CREATE TABLE search_results (
id SERIAL PRIMARY KEY,
address_name VARCHAR(50),
full_name VARCHAR(100),
level_of_bill VARCHAR(20),
make VARCHAR(30),
condition CHAR(1),
category_name VARCHAR(50)
);

CREATE OR REPLACE PROCEDURE sp_courses_by_address(
    IN address_name varchar(100)
)AS
$$
BEGIN
    Truncate search_results;
    INSERT INTO search_results(
        address_name,
        full_name,
        level_of_bill,
        make,
        condition,
        category_name
    )
    SELECT
        ad.name,
        cl.full_name,
        CASE
            WHEN co.bill <= 20 THEN 'Low'
            WHEN co.bill <= 30 THEN 'Medium'
            ELSE 'High'
        END,
        cr.make,
        cr.condition,
        ct.name AS category_name
    FROM
        addresses AS ad
    JOIN
        courses AS co
    ON ad.id = co.from_address_id
    JOIN
        cars AS cr
    ON co.car_id = cr.id
    JOIN
        categories AS ct
    ON cr.category_id = ct.id
    JOIN
        clients AS cl
    ON co.client_id = cl.id
    WHERE
        ad.name = address_name
    ORDER BY
        cr.make ASC,
        cl.full_name ASC;
END;
$$
LANGUAGE plpgsql;


--CALL sp_courses_by_address('66 Thompson Drive');

--SELECT * FROM search_results;