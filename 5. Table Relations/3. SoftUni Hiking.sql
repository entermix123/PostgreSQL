SELECT
	r.start_point,
	r.end_point,
	r.leader_id,
	concat(c.first_name, ' ', c.last_name)
FROM
    campers as c
    JOIN
    routes as r
    ON
    r.leader_id = c.id