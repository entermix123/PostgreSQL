CREATE OR REPLACE FUNCTION fn_get_city_id(city_name VARCHAR)
RETURNS INT AS
$$
    DECLARE
        city_id INT;
    BEGIN
        SELECT id FROM cities
        WHERE name = city_name
        INTO city_id;               --save value to city_id variable
        RETURN  city_id;
    END;
$$
LANGUAGE plpgsql;

SELECT id FROM cities WHERE name = 'Vidin';