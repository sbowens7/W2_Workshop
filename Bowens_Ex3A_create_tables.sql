DROP SCHEMA IF EXISTS lana_dog_walking;
CREATE SCHEMA lana_dog_walking;
USE lana_dog_walking;


USE lana_dog_walking;
CREATE TABLE IF NOT EXISTS Customer (
    Client_ID      INT AUTO_INCREMENT PRIMARY KEY,
    First_Name     VARCHAR(50) NOT NULL,
    Last_Name      VARCHAR(50) NOT NULL,
    Phone_Number   VARCHAR(20),
    Email_Address  VARCHAR(100),
    
    UNIQUE KEY uk_email (Email_Address)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Create the Dog table
USE lana_dog_walking;

CREATE TABLE IF NOT EXISTS Dog (
    Dog_ID          INT AUTO_INCREMENT PRIMARY KEY,
    Dog_Name        VARCHAR(50) NOT NULL,
    Breed           VARCHAR(60),
    Steps_In_A_Day  INT,
    Weight          FLOAT,
    Client_ID       INT NOT NULL,
    
    -- Link each dog to its owner (Customer table)
    FOREIGN KEY (Client_ID) REFERENCES Customer(Client_ID)
        ON DELETE CASCADE ON UPDATE CASCADE,
    
    -- Useful indexes
    INDEX idx_breed (Breed),
    INDEX idx_client (Client_ID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Create the Walker table
USE lana_dog_walking;

CREATE TABLE IF NOT EXISTS Walker (
    Walker_ID      INT AUTO_INCREMENT PRIMARY KEY,
    First_Name     VARCHAR(50) NOT NULL,
    Last_Name      VARCHAR(50) NOT NULL,
    Phone_Number   VARCHAR(20),
    Email_Address  VARCHAR(100),
    
    -- Best practices for a dog-walking business
    UNIQUE KEY uk_walker_email (Email_Address),
    INDEX idx_walker_last_name (Last_Name),
    INDEX idx_walker_phone (Phone_Number)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Create the Walk table for dog-walking business
USE lana_dog_walking;

CREATE TABLE IF NOT EXISTS Walk (
    Walk_ID      INT AUTO_INCREMENT PRIMARY KEY,
    Walk_Date    DATE NOT NULL,
    Walk_Time    TIME NOT NULL,
    Duration     FLOAT COMMENT 'Duration in minutes',
    Status       VARCHAR(20) NOT NULL DEFAULT 'Scheduled',
    Dog_ID       INT NOT NULL,
    Walker_ID    INT NOT NULL,
    
    -- Foreign keys to link to other tables
    FOREIGN KEY (Dog_ID) REFERENCES Dog(Dog_ID) 
        ON DELETE CASCADE ON UPDATE CASCADE,
    
    FOREIGN KEY (Walker_ID) REFERENCES Walker(Walker_ID) 
        ON DELETE RESTRICT ON UPDATE CASCADE,
    
    -- Useful indexes for fast queries
    INDEX idx_walk_date (Walk_Date),
    INDEX idx_dog_id (Dog_ID),
    INDEX idx_walker_id (Walker_ID),
    INDEX idx_status (Status)
    
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;