CREATE OR REPLACE FUNCTION fn_courses_by_client(
    phone_num varchar(20)
) RETURNS INT AS
$$
DECLARE
    number_of_courses INT;
BEGIN
    number_of_courses := (
    SELECT
        count(co.id)
    FROM
        courses AS co
    JOIN
        clients AS cl
    ON co.client_id = cl.id
    WHERE
        cl.phone_number = phone_num
    );
    RETURN number_of_courses;
END;
$$
LANGUAGE plpgsql;

SELECT fn_courses_by_client('(803) 6386812');   --RESULT: 5

SELECT fn_courses_by_client('(831) 1391236');   --RESULT: 3

SELECT fn_courses_by_client('(704) 2502909');   --RESULT: 0