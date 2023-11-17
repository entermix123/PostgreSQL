CREATE OR REPLACE FUNCTION fn_creator_with_board_games(
    first_name_of_a_board_game_creator VARCHAR(30)
) RETURNS INT AS
$$
DECLARE
    game_count INT;
BEGIN
   game_count := (
                SELECT
                    COUNT(board_game_id)
                FROM
                    creators AS c
                LEFT JOIN
                    creators_board_games AS cbg
                ON
                    c.id = cbg.creator_id
                WHERE
                    c.first_name = first_name_of_a_board_game_creator
                    AND
                    cbg.board_game_id IS NOT NULL);
                RETURN game_count;
END;
$$
LANGUAGE plpgsql;

--SELECT fn_creator_with_board_games('Bruno');

--SELECT fn_creator_with_board_games('Alexander');