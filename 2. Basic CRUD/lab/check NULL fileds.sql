SELECT * FROM clients
WHERE last_name IS NULL;
--WHERE last_name IS NOT NULL

SELECT first_name, room_id FROM clients
WHERE last_name IS NULL;

SELECT first_name, room_id FROM clients
WHERE last_name IS NOT NULL;