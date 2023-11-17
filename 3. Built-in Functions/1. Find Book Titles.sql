SELECT 
	title
FROM books
WHERE SUBSTRING(title, 1, 3) = 'The'
--WHRE title LIKE 'The%'
ORDER BY id