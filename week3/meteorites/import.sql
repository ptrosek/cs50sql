DROP TABLE IF EXISTS temp_meteorites;
-- CREATE TABLE
--     temp_meteorites (
--     name TEXT,
--     id INT,
--     nametype TEXT,
--     class TEXT,
--     mass FLOAT DEFAULT NULL,
--     discovery TEXT,
--     year DATE DEFAULT NULL,
--     lat FLOAT DEFAULT NULL,
--     long FLOAT DEFAULT NULL
-- );

.nullvalue NULL
.mode csv
.separator ,
.import ./meteorites.csv temp_meteorites
.mode columns

DELETE FROM temp_meteorites
WHERE
nametype = 'Relict';

UPDATE temp_meteorites
SET
long = NULLIF(long, '');

UPDATE temp_meteorites
SET
lat = NULLIF(lat, '');

UPDATE temp_meteorites
SET
mass = NULLIF(mass, '');

UPDATE temp_meteorites
SET
year = NULLIF(year, '');

UPDATE temp_meteorites
SET
mass = ROUND(mass, 2),
lat = ROUND(lat, 2),
long = ROUND(long, 2);


DROP TABLE IF EXISTS meteorites;
CREATE TABLE
    meteorites (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT,
        class TEXT,
        mass FLOAT DEFAULT NULL,
        discovery TEXT,
        year DATE DEFAULT NULL,
        lat FLOAT DEFAULT NULL,
        long FLOAT DEFAULT NULL
);

INSERT INTO meteorites (name, class, mass, discovery, year, lat, long)
SELECT name, class, mass, discovery, year, lat, long FROM temp_meteorites ORDER BY year ASC, name ASC;
