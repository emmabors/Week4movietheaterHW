CREATE TABLE customers(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);

CREATE TABLE concessions(
    concessions_id SERIAL PRIMARY KEY,
    candy VARCHAR(20),
    snacks VARCHAR(20),
    drinks VARCHAR(20),
    customer_id INTEGER,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE tickets(
    ticket_id SERIAL PRIMARY KEY,
    sale_date VARCHAR(6),
    seat_number VARCHAR(25),
    customer_id INTEGER,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE movies(
    movie_id SERIAL PRIMARY KEY,
    movie_name VARCHAR(50),
    movie_duration VARCHAR(20),
    ticket_id INTEGER,
    FOREIGN KEY (ticket_id) REFERENCES tickets(ticket_id)
);

ALTER TABLE customers
ALTER COLUMN first_name SET NOT NULL;

ALTER TABLE customers
ALTER COLUMN last_name SET NOT NULL;

ALTER TABLE movies
ADD movie_theater_num VARCHAR(20);

ALTER TABLE tickets
ADD movie_theater_num VARCHAR(20);