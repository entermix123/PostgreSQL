SELECT
    concat(a.address, ' ', a.address_2) AS "Apartment Address",
    b.booked_for AS "Nights"
FROM
    apartments as a
    JOIN
       bookings as b
    USING (booking_id)
ORDER BY
    a.apartment_id;