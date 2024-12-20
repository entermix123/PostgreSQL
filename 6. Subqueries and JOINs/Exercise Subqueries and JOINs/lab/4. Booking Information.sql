SELECT
    b.booking_id,
    a.name as apartment_owner,
    a.apartment_id,
    concat(c.first_name, ' ', c.last_name) AS customer_name
FROM
    apartments as a
FULL JOIN
    bookings as b
USING (booking_id)
FULL JOIN
    customers AS c
USING
    (customer_id)
ORDER BY
    booking_id ASC,
    apartment_owner ASC,
    customer_name ASC;