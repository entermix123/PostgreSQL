SELECT
	name,
	start_date
FROM
	projects
WHERE NAME LIKE 'MOUNT%'    --check if in the fileds exist 'MOUNT%' in the beginning of the text
ORDER BY 
	id