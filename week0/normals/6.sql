SELECT
    "50m",
    longitude,
    latitude
FROM
    normals
WHERE
    (
        longitude > 55
        AND longitude < 75
    )
    AND (
        latitude > 0
        AND latitude < 20
    )