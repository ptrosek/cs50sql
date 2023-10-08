SELECT
    (first_name || " " || last_name) AS "Full Name"
FROM
    players
WHERE
    debut LIKE "2023-%-%"
ORDER BY
    debut;