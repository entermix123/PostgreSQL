CREATE OR REPLACE FUNCTION fn_count_employees_by_town(town_name VARCHAR)
RETURNS VARCHAR AS
$$
    DECLARE
        town_count INT;
    BEGIN
        SELECT count(*)
        FROM
            employees as e
        JOIN
            addresses as a
        USING (address_id)
        JOIN
            towns as t
        USING (town_id)
        WHERE t.name = town_name
        INTO town_count;
        RETURN town_count;
    END
$$
LANGUAGE plpgsql;

SELECT fn_count_employees_by_town('Sofia') as count;