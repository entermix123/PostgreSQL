SELECT
	(REGEXP_MATCHES("River Information", '([0-9]{1,4})'))[1] AS river_length
	--USING REGEX AND RETUNR [1] FIRST INDEX BECAUSE WE DON'T WANT TO GET LIST
FROM
	view_river_info