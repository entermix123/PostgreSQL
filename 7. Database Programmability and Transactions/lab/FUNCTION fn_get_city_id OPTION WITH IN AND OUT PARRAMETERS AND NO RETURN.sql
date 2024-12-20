DROP FUNCTION IF EXISTS fn_get_city_id;
CREATE FUNCTION fn_get_city_id(
    IN city_name VARCHAR,
    OUT city_id INT,
    OUT status INT      --output if error
    ) AS
$$
    DECLARE
        temp_id INT -- := 1;	-- := 1 is default value
    BEGIN
        SELECT id FROM cities WHERE name = city_name
        INTO temp_id;
        IF temp_id IS NULL THEN
            SELECT 100 INTO status;     --code for error
        ELSE
            city_id := temp_id;
            status := 0;
            --SELECT temp_id, 0 INTO city_id, status;     --set city_id as temp_id and 0 to status code - no errors
        end if;
    END;
$$
LANGUAGE plpgsql;

SELECT * FROM fn_get_city_id('Kaspichan');