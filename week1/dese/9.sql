SELECT
    districts.name
FROM
    districts
    JOIN expenditures ON expenditures.district_id = districts.id
WHERE
    expenditures.pupils IN (
        SELECT
            MIN(expenditures.pupils)
        FROM
            expenditures
    )