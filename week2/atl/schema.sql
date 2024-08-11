CREATE TABLE
    airlines (
        id INT,
        name TEXT,
        concourse TEXT,
        PRIMARY KEY (id)
    );

CREATE TABLE
    passengers (
        id INT,
        first_name TEXT,
        last_name TEXT,
        AGE INT,
        PRIMARY KEY (id)
    );

CREATE TABLE
    flights (
        id INT,
        flight_number TEXT,
        airline INT,
        departure_airport TEXT,
        arrival_airport TEXT,
        departure_time TEXT,
        arrival_time TEXT,
        PRIMARY KEY (id),
        FOREIGN KEY (airline) REFERENCES airlines (id)
    );

CREATE TABLE
    check_in (
        id INT,
        check_in_time TEXT,
        passenger INT,
        flight INT,
        PRIMARY KEY (id),
        FOREIGN KEY (passenger) REFERENCES passengers (id),
        FOREIGN KEY (flight) REFERENCES flights (id)
    );