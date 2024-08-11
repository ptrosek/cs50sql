CREATE TABLE
    ingredients (
        id INT,
        name TEXT,
        unit TEXT,
        price_per_unit REAL,
        PRIMARY KEY (id)
    );

CREATE TABLE
    donuts (
        id INT,
        name TEXT,
        gluten_free INT,
        price_per_donut REAL,
        PRIMARY KEY (id)
    );

CREATE TABLE
    customers (
        id INT,
        first_name TEXT,
        last_name TEXT,
        PRIMARY KEY (id)
    );

CREATE TABLE
    orders (
        order_number INT,
        customer_id INT,
        PRIMARY KEY (order_number),
        FOREIGN KEY (customer_id) REFERENCES customers (id)
    );

CREATE TABLE
    order_donuts (
        id INT,
        order_id INT,
        donut_id INT,
        PRIMARY KEY (id),
        FOREIGN KEY (order_id) REFERENCES orders (order_number),
        FOREIGN KEY (donut_id) REFERENCES donuts (id)
    );

CREATE TABLE
    donut_ingridients (
        id INT,
        ingredient_id INT,
        donut_id INT,
        PRIMARY KEY (id),
        FOREIGN KEY (ingredient_id) REFERENCES ingredients (id),
        FOREIGN KEY (donut_id) REFERENCES donuts (id)
    );