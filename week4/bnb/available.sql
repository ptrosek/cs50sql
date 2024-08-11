CREATE VIEW available AS
SELECT
    l.id,
    l.property_type,
    l.host_name,
    av.date
FROM
    listings l
    JOIN availabilities av ON av.listing_id = l.id
WHERE
    av.available = 'TRUE';
