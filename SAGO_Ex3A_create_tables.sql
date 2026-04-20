DROP SCHEMA IF EXISTS lana_dog_walking;
CREATE SCHEMA lana_dog_walking;
USE lana_dog_walking;

CREATE TABLE walkers (Walker_id INT AUTO_INCREMENT PRIMARY KEY, 
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL, 
phone_number VARCHAR(20), 
email VARCHAR(100) UNIQUE,
active_status BOOLEAN DEFAULT TRUE);

CREATE TABLE walks (
    walk_id INT AUTO_INCREMENT PRIMARY KEY,
    walk_date DATE NOT NULL,
    walk_time TIME NOT NULL,
    duration INT, -- duration in minutes
    status VARCHAR(50),
    dog_id INT,
    walker_id INT,
    route VARCHAR(255),
    notes TEXT,
    miles_walked DECIMAL(5,2),

    -- Foreign key linking to walkers table
    CONSTRAINT fk_walker
        FOREIGN KEY (walker_id) REFERENCES walkers(walker_id)
        ON DELETE SET NULL
        ON UPDATE CASCADE);
        
 CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    phone_number VARCHAR(20),
    email VARCHAR(100) UNIQUE,
    address VARCHAR(255),
    emergency_contact VARCHAR(100));
    
    CREATE TABLE dogs (
    dog_id INT AUTO_INCREMENT PRIMARY KEY,
    dog_name VARCHAR(100) NOT NULL,
    dog_breed VARCHAR(100),
    weight DECIMAL(5,2), -- weight in pounds (or kg if you prefer)
    steps_per_day INT,
    dog_chip VARCHAR(100) UNIQUE,
    date_of_birth DATE,
    customer_id INT,
    notes TEXT,

    -- Foreign key linking to customers table (assumes it exists)
    CONSTRAINT fk_customer
        FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
        ON DELETE SET NULL
        ON UPDATE CASCADE);