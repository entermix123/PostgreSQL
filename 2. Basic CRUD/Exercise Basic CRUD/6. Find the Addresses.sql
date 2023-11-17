SELECT 
	id,
	concat_ws(' ', number, street) AS "Address",
	city_id
FROM 
	addresses
WHERE id >= 20