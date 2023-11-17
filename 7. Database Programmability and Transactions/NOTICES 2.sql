CREATE OR REPLACE FUNCTION fn_test_func(first_name VARCHAR, last_name VARCHAR)
RETURNS INT AS
$$
BEGIN
    RAISE NOTICE 'My name is % %', first_name,last_name;
    RETURN NULL;
END;
$$
LANGUAGE plpgsql;

SELECT fn_test_func('Divak', 'Divakov'); 	--ON OUTPUT TAB WE CAN SEE PRINTED NOTICE