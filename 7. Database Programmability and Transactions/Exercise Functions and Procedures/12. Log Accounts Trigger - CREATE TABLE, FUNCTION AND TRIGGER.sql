CREATE TABLE logs(
    id SERIAL PRIMARY KEY,
    account_id INT,
    old_sum NUMERIC(24, 4),
    new_sum NUMERIC(24, 4)
    );

CREATE OR REPLACE FUNCTION trigger_fn_insert_new_entry_into_logs()
RETURNS TRIGGER AS
$$
    BEGIN
        INSERT INTO
            logs(account_id, old_sum, new_sum)
        VALUES
            (old.id, old.balance, new.balance);

        RETURN NEW;   --good practice to return new when using SAVE
        --RETURN OLD; --good practice to return new when using DELETE
        --RETURN NULL --good practice to return new when ERROR
    END;
$$
LANGUAGE plpgsql;

CREATE TRIGGER
    tr_account_balance_change
AFTER UPDATE OF balance ON accounts
FOR EACH ROW
WHEN
    (NEW.balance <> OLD.balance)
EXECUTE FUNCTION
    trigger_fn_insert_new_entry_into_logs();


--UPDATE accounts
--SET balance = 150.00
--WHERE "id" = 1;

--SELECT * FROM logs;