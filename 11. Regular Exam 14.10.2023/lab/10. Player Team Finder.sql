CREATE OR REPLACE PROCEDURE sp_players_team_name(
    IN player_name VARCHAR(30),
    OUT team_name varchar(45)
) AS
$$
BEGIN
    team_name := (
    SELECT
        t.name
    FROM
        players AS p
    JOIN
        teams AS t
    ON p.team_id = t.id
    WHERE
        CONCAT(p.first_name, ' ', p.last_name) = player_name
        AND
        p.team_id IS NOT NULL);
    IF team_name IS NULL
        THEN team_name := 'The player currently has no team';
    END IF;
    RETURN;
END;
$$
LANGUAGE plpgsql;

CALL sp_players_team_name('Thor Serrels', '');

CALL sp_players_team_name('Walther Olenchenko', '');

CALL sp_players_team_name('Isaak Duncombe', '');