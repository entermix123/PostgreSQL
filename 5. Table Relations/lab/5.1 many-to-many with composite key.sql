SELECT
	concat(m.first_name, m.last_name),
	men_id,
	women_id,
	concat(w.first_name, w.last_name)
FROM
	men as m JOIN men_women			-- create men_women additional field as composite key
	ON
	m.id = men_women.men_id
		JOIN women as w
		ON
		men_women.women_id = w.id