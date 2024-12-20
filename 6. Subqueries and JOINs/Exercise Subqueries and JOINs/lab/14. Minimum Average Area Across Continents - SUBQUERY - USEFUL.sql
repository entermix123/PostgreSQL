SELECT
    MIN(average) AS min_average_area
FROM (
    SELECT
        AVG(area_in_sq_km) as average
    FROM
        countries
    GROUP BY
        continent_code
) AS average_area