SELECT
    city,
    COUNT(schools.id) AS "Number of schools"
FROM
    schools
WHERE
    schools.type = "Public School"
GROUP BY
    city
ORDER BY
    "Number of schools" DESC,
    city
LIMIT
    10;