SELECT
    COUNT(*) AS countries_without_rivers
FROM
    countries
LEFT JOIN
    countries_rivers
ON  --USING	,when names are the same (country_code) we can join with USING
    --  (country_code)
    countries.country_code = countries_rivers.country_code
    
WHERE
        countries_rivers.country_code IS NULL;