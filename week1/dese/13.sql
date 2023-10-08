SELECT
    districts.name,
    AVG(graduation_rates.graduated),
    staff_evaluations.exemplary,
    expenditures.per_pupil_expenditure
FROM
    districts
    JOIN expenditures ON expenditures.district_id = districts.id
    JOIN staff_evaluations ON staff_evaluations.district_id = districts.id
    JOIN schools ON schools.district_id = districts.id
    JOIN graduation_rates ON graduation_rates.school_id = schools.id
GROUP BY
    districts.id
ORDER BY
    staff_evaluations.exemplary DESC,
    expenditures.per_pupil_expenditure DESC;