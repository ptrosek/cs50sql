CREATE TABLE
    users (
        id INT,
        first_name TEXT,
        last_name TEXT,
        username TEXT UNIQUE,
        password TEXT,
        PRIMARY KEY (id)
    );
CREATE TABLE
    schools (
        id INT,
        name TEXT,
        type TEXT,
        location TEXT,
        founding_year INT,
        PRIMARY KEY (id)
    );
CREATE TABLE
    comapanies (
        id INT,
        name TEXT,
        industry TEXT,
        location TEXT,
        PRIMARY KEY (id)
    );
CREATE TABLE
    user_connections (
        id INT,
        user_one INT,
        user_two INT,
        PRIMARY KEY (id),
        FOREIGN KEY (user_one) REFERENCES users (id),
        FOREIGN KEY (user_two) REFERENCES users (id)
    );
CREATE TABLE
    user_school (
        id INT,
        user_id INT,
        school_id INT,
        start_date TEXT,
        end_date TEXT,
        degree_type TEXT,
        PRIMARY KEY (id),
        FOREIGN KEY (user_id) REFERENCES users (id),
        FOREIGN KEY (school_id) REFERENCES schools (id)
    );
CREATE TABLE
    user_company (
        id INT,
        user_id INT,
        company_id INT,
        start_date TEXT,
        end_date TEXT,
        title TEXT,
        PRIMARY KEY (id),
        FOREIGN KEY (user_id) REFERENCES users (id),
        FOREIGN KEY (company_id) REFERENCES comapanies (id)
    );