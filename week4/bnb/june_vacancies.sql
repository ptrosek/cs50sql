CREATE VIEW june_vacancies AS
SELECT
    l.id,
    l.property_type,
    l.host_name,
    COUNT(av.id) AS 'days_vacant'
FROM
    listings l
    JOIN availabilities av ON av.listing_id = l.id
WHERE
    av.available = 'TRUE'
    AND STRFTIME('%m-%Y', av.date) = '06-2023'
GROUP BY
    av.listing_id;
