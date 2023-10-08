SELECT
    salaries.year,
    salary
FROM
    salaries
    JOIN players ON players.id = salaries.player_id
WHERE
    players.first_name = "Cal"
    AND players.last_name LIKE "Ripken"
ORDER BY
    salaries.year DESC