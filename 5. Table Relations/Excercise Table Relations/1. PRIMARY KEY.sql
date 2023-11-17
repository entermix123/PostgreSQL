--Create a table and add primary key
CREATE TABLE products (
    product_name VARCHAR(100)
    );

INSERT INTO products
VALUES
    ('Broccoli'),
    ('Shampoo'),
    ('Toothpaste'),
    ('Candy');

alter table products
ADD COLUMN
    id SERIAL PRIMARY KEY;