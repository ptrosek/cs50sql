SELECT
    teams.name,
    SUM(performances.H) AS "total hits"
FROM
    performances
    JOIN teams ON performances.team_id = teams.id
WHERE
    performances.year = 2001
GROUP BY
    teams.id
ORDER BY
    "total hits" DESC
LIMIT
    5