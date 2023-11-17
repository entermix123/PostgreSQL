--DROP TABLE IF EXISTS items;

CREATE TABLE items(
    id SERIAL PRIMARY KEY ,
    status INT,
    create_date DATE
);

CREATE TABLE items_logs(
    id SERIAL PRIMARY KEY ,
    status INT,
    create_date DATE
);

CREATE OR REPLACE FUNCTION log_items()
RETURNS TRIGGER AS
$$
    BEGIN
        INSERT INTO items_logs(status, create_date)
        VALUES
            (new.status, new.create_date);
        RETURN new;
    END;
$$
LANGUAGE plpgsql;

CREATE TRIGGER log_items_trigger
AFTER INSERT ON items               --ACTIVATE TRIGGER AFTER THE INSERT, CAN BE BEFORE
FOR EACH ROW                        --ITERATE TRUE EVERY ROW
EXECUTE PROCEDURE log_items();      --can be EXECUTE FUNCTION


INSERT INTO items(status, create_date)
VALUES
    (1, now()),
    (2, now()),
    (3, now()),
    (4, now()),
    (5, now());


SELECT * FROM items_logs;