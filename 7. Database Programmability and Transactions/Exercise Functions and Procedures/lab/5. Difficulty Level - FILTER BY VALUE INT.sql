CREATE OR REPLACE FUNCTION fn_difficulty_level(
    level INT
) RETURNS VARCHAR(50) AS
$$

DECLARE
    difficulty_level VARCHAR(50);
BEGIN
    IF (level <= 40) THEN
        difficulty_level := 'Normal Difficulty';
    ELSIF (level BETWEEN 41 AND 60) THEN
        difficulty_level := 'Nightmare Difficulty';
    ELSE difficulty_level := 'Hell Difficulty';
    END IF;
    RETURN difficulty_level;
END;
$$
LANGUAGE plpgsql;

SELECT
    user_id,
    level,
    cash,
    fn_difficulty_level(level)
FROM
    users_games
ORDER BY user_id ASC;


CALL sp_animals_with_owners_or_not('Pumpkinseed Sunfish', '')	    --result: Kamelia Yancheva

CALL sp_animals_with_owners_or_not('Hippo', '')			            --result: For adoption

CALL sp_animals_with_owners_or_not('Brown bear', '')		        --result: Gergana Mancheva
