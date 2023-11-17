SELECT 
	concat_ws(' ', m.mountain_range, p.peak_name) AS "Mountaing Information",
	CHAR_LENGTH(CONCAT_WS(' ', m.mountain_range, p.peak_name)) AS "Character Length",
	--GIVE US BYTES
	BIT_LENGTH(CONCAT_WS(' ', m.mountain_range, p.peak_name)) AS "Bits of a String"
	--GEVE US BITS
FROM
	mountains AS m,
	peaks AS p
WHERE
	m."id" = p.mountain_id;