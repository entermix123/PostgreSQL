SELECT
	title,
	TRUNC(cost, 3) AS modified_price
	--round(cost, 3) AS modified_price
FROM books
ORDER BY id