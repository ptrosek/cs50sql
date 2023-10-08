SELECT
    "0m",
    longitude,
    latitude
FROM
    normals
ORDER BY
    "0m" DESC,
    latitude
LIMIT
    10;