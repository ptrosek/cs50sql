DROP TABLE IF EXISTS triplets;
CREATE TABLE
    triplets (
        sentence_number INT,
        character_number INT,
        message_length INT
    );

INSERT INTO
    triplets
VALUES
    (14, 98, 4),
    (114, 3, 5),
    (618, 72, 9),
    (630, 7, 3),
    (932, 12, 5),
    (2230, 50, 7),
    (2346, 44, 10),
    (3041, 14, 5);

DROP VIEW IF EXISTS message;
CREATE VIEW message AS
SELECT
    substr (
        se.sentence,
        tri.character_number,
        tri.message_length
    ) as 'phrase'
FROM
    sentences se
    JOIN triplets tri ON tri.sentence_number = se.id;
