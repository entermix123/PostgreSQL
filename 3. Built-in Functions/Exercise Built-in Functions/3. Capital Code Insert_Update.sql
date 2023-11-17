ALTER TABLE countries
ADD COLUMN 
	capital_code CHAR(2);

UPDATE 
	countries
SET capital_code = SUBSTRING(capital, 1, 2);
--RETURNING *

--INSERT INTO is used when we add data to all columns and the rest fields will be as default
--UPDATE is used when we want to add data only in one field