UPDATE coaches
SET
    salary = salary * coach_level
WHERE
    first_name LIKE 'C%'
    AND
        (SELECT
            COUNT(player_id)
        FROM
            players_coaches
        ) IS NOT NULL;

-- SELECT
--     first_name,
--     last_name,
--     salary,
--     coach_level
-- FROM
--     coaches
-- JOIN
--     players_coaches
-- ON coaches.id = players_coaches.coach_id
-- WHERE
--     first_name LIKE 'C%'
--     AND
--     player_id = (
--         SELECT
--             COUNT(player_id)
--         FROM
--             players_coaches
--         ) IS NOT NULL