SELECT
    o.name,
    count(a.id) AS "Count of animals"
FROM
    owners AS o
JOIN
    animals AS a
ON o.id = a.owner_id
GROUP BY
    o.name
ORDER BY
    "Count of animals" DESC,
    o.name ASC
LIMIT 5