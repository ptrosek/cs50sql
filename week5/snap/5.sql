SELECT
    f.friend_id
FROM
    friends f
    JOIN users u ON f.user_id = u.id
WHERE
    u.username = 'lovelytrust487'
INTERSECT
SELECT
    f.friend_id
FROM
    friends f
    JOIN users u ON f.user_id = u.id
WHERE
    u.username = 'exceptionalinspiration482';
