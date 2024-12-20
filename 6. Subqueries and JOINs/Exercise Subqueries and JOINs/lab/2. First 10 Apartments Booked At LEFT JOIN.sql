SELECT
    a.name AS "Name",
    a.country AS "Country",
    b.booked_at::date AS "Booked at"
FROM
    apartments as a
LEFT JOIN
    bookings as b
USING (booking_id)
LIMIT 10;