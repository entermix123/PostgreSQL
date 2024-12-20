--find null fields
--SELECT * FROM clients
--WHERE last_name IS NULL;

UPDATE clients                  --update fields
SET last_name = 'Unknown'       --in column last_name
WHERE last_name IS NULL;        --if it is NULL

--check result
--SELECT * FROM clients
--WHERE last_name = 'Unknown';