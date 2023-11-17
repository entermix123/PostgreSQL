CREATE OR REPLACE PROCEDURE sp_withdraw_money(
    account_id INT,
    money_amount NUMERIC(12, 4)
) AS
$$
DECLARE
    current_balance NUMERIC;
BEGIN
    current_balance := (
        SELECT
            balance
        FROM
            accounts
        WHERE
            id = account_id
        );
    IF (current_balance - money_amount) >= 0 THEN
        UPDATE accounts
        SET balance = balance - money_amount
        WHERE id = account_id;
    ELSE
        RAISE NOTICE 'Insufficient balance to withdraw 5437.0000 %', money_amount;
    END IF;
END;
$$
LANGUAGE plpgsql;

--CALL sp_withdraw_money(3, 5050.7500);

--SELECT * FROM accounts WHERE id=3;