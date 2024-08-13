SELECT
    u.id
FROM
    messages m
    JOIN users u ON u.id = m.to_user_id
WHERE
    m.from_user_id = (
        SELECT
            id
        FROM
            users
        WHERE
            username = 'creativewisdom377'
    )
GROUP BY
    u.id
ORDER BY
    COUNT(m.id) DESC
LIMIT 3;
