UPDATE countries
SET country_name = 'Burma'
WHERE country_name LIKE '%Myanmar%';

INSERT INTO monasteries (monastery_name, country_code)
VALUES
    ('Hanga Abbey', (SELECT countries.country_code FROM Countries WHERE countries.country_name = 'Tanzania')),
    ('Myin-Tin-Daik', (SELECT countries.country_code FROM Countries WHERE countries.country_name = 'Myanmar'));

SELECT
    co.continent_name as "Continent Name",
    c.country_name AS "Country Name",
    COUNT(m.id) AS "Monasteries Count"
FROM
    continents as co
LEFT JOIN
    countries as c
USING (continent_code)
LEFT JOIN
    monasteries as m
USING (country_code)
WHERE
    NOT three_rivers
GROUP BY
    c.country_name, co.continent_name
ORDER BY
    "Monasteries Count" DESC,
    "Country Name" ASC;