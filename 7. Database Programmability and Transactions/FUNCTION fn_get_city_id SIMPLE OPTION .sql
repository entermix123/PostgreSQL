CREATE OR REPLACE FUNCTION fn_get_city_id(city_name VARCHAR)
RETURNS INT AS
$$
    DECLARE
        city_id INT;
    BEGIN
        SELECT id INTO city_id FROM cities
        WHERE name = city_name;
        RETURN  city_id;
    END;
$$
LANGUAGE plpgsql;

SELECT id FROM cities WHERE name = 'Vidin';

INSERT INTO persons(first_name, last_name, city_id)
VALUES 
    ('Lili', 'Pencheva', fn_get_city_id('Plovdiv'));