WITH row_number AS (
  SELECT
    c.country_name,
    p.peak_name,
    p.elevation,
    m.mountain_range,
    ROW_NUMBER() OVER (
        PARTITION BY c.country_name
        ORDER BY p.elevation DESC
        ) AS peak_rank
  FROM countries c
    LEFT JOIN mountains_countries mc on c.country_code = mc.country_code
    LEFT JOIN mountains m on mc.mountain_id = m.id
    LEFT JOIN peaks p on m.id = p.mountain_id
)
SELECT
    country_name,
    COALESCE(peak_name, '(no highest peak)') AS peak_name,
    COALESCE(elevation, 0) AS elevation,
    CASE
        WHEN peak_name IS NULL OR mountain_range IS NULL THEN '(no mountain)'
        ELSE mountain_range
    END AS mountain
FROM row_number
WHERE peak_rank = 1
ORDER BY country_name, elevation DESC;