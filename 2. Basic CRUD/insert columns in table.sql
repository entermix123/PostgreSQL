-- HOW TO INSERT COLUMN IN SPECIFIC PLACE IN TABLE:
-- - create new table with added specific column
-- - insert data from old table
-- - set all NULL fields in the new table as 0

CREATE TABLE new_table			--create new table
	id serial PRIMARY KEY,
	age INT,			--insert age column between id and first_name columns
	first_name VARCHAR(30),
	last_name VARCHAR(30);


INSERT INTO new_table (first_name, last_name)	--specify which columns we need to insert data in
SELECT 
	first_name,				    --specify the columns we want the information from
	last_name
FROM old_table;

UPDATE new_table				--update new table with default age value to 0
SET age = 0
WHERE age IS NULL;

RETURNING *					    --Check the changes made