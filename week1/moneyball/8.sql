SELECT
    salaries.salary
FROM
    performances
    JOIN players ON performances.player_id = players.id
    JOIN salaries ON salaries.player_id = players.id
WHERE
    performances.year = 2001
    AND salaries.year = 2001
GROUP BY
    players.id
ORDER BY
    HR DESC
LIMIT
    1