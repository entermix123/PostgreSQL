CREATE TYPE address AS (
	street TEXT,
	city TEXT,
	postalCode CHAR(4)
	);

CREATE TABLE customer (
	id SERIAL PRIMARY KEY,
	customer_name TEXT,
	customer_address address
	);
	
INSERT INTO customer (customer_name, customer_address)
VALUES ('Danio', ('some street', 'some_town', '1616'))