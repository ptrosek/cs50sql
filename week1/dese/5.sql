SELECT
    city,
    COUNT(*) AS "Number of schools"
FROM
    schools
WHERE
    schools.type = "Public School"
GROUP BY
    city
HAVING
    "Number of schools" <= 3
ORDER BY
    "Number of schools" DESC,
    city