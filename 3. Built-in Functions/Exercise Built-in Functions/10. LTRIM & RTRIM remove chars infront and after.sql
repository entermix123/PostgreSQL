SELECT 
	LTRIM(peak_name, 'M') AS "Left Trim",	--from left.
	RTRIM(peak_name, 'm') AS "Right Trim"	--from right
FROM
	peaks;