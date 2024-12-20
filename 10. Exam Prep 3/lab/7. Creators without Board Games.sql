SELECT
    id,
    CONCAT(first_name, ' ', last_name) AS creator_name,
    email
FROM
    creators
LEFT JOIN creators_board_games AS cbg
ON creators.id = cbg.creator_id
WHERE
    cbg.board_game_id IS NULL
ORDER BY
    creator_name ASC