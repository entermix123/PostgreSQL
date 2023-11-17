CREATE OR REPLACE PROCEDURE sp_increase_salary_by_id(id INT) AS
$$
    BEGIN
        IF (SELECT salary FROM employees WHERE employee_id = id) IS NULL THEN
            RETURN;
        ELSE
            UPDATE employees SET salary = salary + salary * 0.05 WHERE employee_id = id;
        END IF;
        COMMIT; --CAN BE WITHOUT COMMIT BECAUSE PROCEDURE AUTOMATICALLY COMMITS
    END;
$$
LANGUAGE plpgsql;

CALL sp_increase_salary_by_id(17);

SELECT salary FROM employees WHERE employee_id = 17;