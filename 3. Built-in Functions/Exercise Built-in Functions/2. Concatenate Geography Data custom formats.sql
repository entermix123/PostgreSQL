CREATE VIEW view_continents_countries_currencies_details
AS
SELECT
	concat(c.continent_name, ': ', c.continent_code) AS "Continent Details",
	concat_ws(' - ', d.country_name, capital, d.area_in_sq_km, 'km2') AS "Country Information",
	concat(k.description, ' (', k.currency_code, ')') AS "Currencies"
	
FROM
	continents AS c,
	countries AS d,
	currencies AS k
WHERE
	c.continent_code = d.continent_code		--JOIN COMMON FIELDS WITH WHERE KAY WORD
	AND
	d.currency_code = k.currency_code		--JOIN COMMON FIELDS WITH WHERE KAY WORD
ORDER BY
	"Country Information" ASC,
	"Currencies" ASC;