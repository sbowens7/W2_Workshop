DROP SCHEMA IF EXISTS lana_dog_walking;
CREATE SCHEMA lana_dog_walking;
USE lana_dog_walking;

CREATE TABLE categories (
    category_code INT PRIMARY KEY,
    event_category VARCHAR(50) NOT NULL
);

CREATE TABLE managers (
    employee_id VARCHAR(10) PRIMARY KEY,
    manager_name VARCHAR(100) NOT NULL,
    mgr_email VARCHAR(100) NOT NULL
);

CREATE TABLE venues (
    venue_id VARCHAR(20) PRIMARY KEY,
    venue_location VARCHAR(100) NOT NULL,
    location_address VARCHAR(150) NOT NULL,
    location_city VARCHAR(50) NOT NULL,
    location_state VARCHAR(2) NOT NULL,
    location_zip VARCHAR(10) NOT NULL
);

CREATE TABLE events (
    event_id INT PRIMARY KEY,
    event_name VARCHAR(150) NOT NULL,
    event_date DATE NOT NULL,
    category_code INT NOT NULL,
    employee_id VARCHAR(10) NOT NULL,
    venue_id VARCHAR(20) NOT NULL,
    FOREIGN KEY (category_code) REFERENCES categories(category_code),
    FOREIGN KEY (employee_id) REFERENCES managers(employee_id),
    FOREIGN KEY (venue_id) REFERENCES venues(venue_id)
);