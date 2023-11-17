--Create or replace because we can execute multiple times
CREATE OR REPLACE FUNCTION fn_full_name(VARCHAR, VARCHAR)
RETURNS VARCHAR AS
$$
    DECLARE                             --declare variables
    first_name ALIAS FOR $1;            --var1 for attr 1
    last_name ALIAS FOR $2;             --var2 for attr 2
    BEGIN                               --begin function logic
        RETURN CONCAT(first_name, ' ', last_name);
    END                                 --end function logic
$$
--procedure language pg postgre sql
LANGUAGE plpgsql;


--Call function
SELECT fn_full_name('Danio', 'Shet');