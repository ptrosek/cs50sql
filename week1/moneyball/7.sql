SELECT
    players.first_name,
    players.last_name
FROM
    players
    JOIN salaries ON salaries.player_id = players.id
GROUP BY
    players.id
ORDER BY
    MAX(salaries.salary) DESC
LIMIT
    1