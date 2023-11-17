CREATE OR REPLACE FUNCTION fn_get_volunteers_count_from_department(
    searched_volunteers_department VARCHAR(30)) RETURNS INT
AS
$$
DECLARE
    volunteers_count INT;
BEGIN
    volunteers_count := (
    SELECT
        COUNT(v.id)
    FROM
        volunteers AS v
    JOIN
        volunteers_departments AS vd
    ON v.department_id = vd.id
    WHERE
        vd.department_name = searched_volunteers_department);
    RETURN volunteers_count;
END;
$$
LANGUAGE plpgsql;


SELECT fn_get_volunteers_count_from_department('Education program assistant');  --result: 6

SELECT fn_get_volunteers_count_from_department('Guest engagement');             --result: 4

SELECT fn_get_volunteers_count_from_department('Zoo events');                   --result: 5