SELECT
    u.username
FROM
    messages m
    JOIN users u ON u.id = m.to_user_id
GROUP BY
    u.id
ORDER BY
    COUNT(m.id) DESC
LIMIT
    1;
