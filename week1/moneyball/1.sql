SELECT
    salaries.year,
    ROUND(AVG(salary), 2) AS "average salary"
FROM
    salaries
GROUP BY
    salaries.year
ORDER BY
    salaries.year DESC