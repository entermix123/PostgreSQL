CREATE OR REPLACE FUNCTION delete_last_item_log()       --SET SPECIFIC VOLUME FOR LOGS - 10
RETURNS TRIGGER as
$$
    BEGIN
        WHILE (SELECT count(*) FROM items_logs) > 10 LOOP                       --WHILE CYCLE
            DELETE FROM items_logs WHERE id = (SELECT MIN(id) FROM items_logs); --DELETE ACTION
        END LOOP;
        RETURN new;
    END;

$$
LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER clear_item_log
AFTER INSERT ON items_logs
FOR EACH STATEMENT
EXECUTE PROCEDURE delete_last_item_log();

SELECT * FROM items_logs;

INSERT INTO items(status, create_date)
VALUES
    (1, now()),
    (2, now()),
    (3, now()),
    (4, now()),
    (5, now()),
    (6, now()),
    (7, now());