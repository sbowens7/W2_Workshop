USE lana_dog_walking;

INSERT INTO customer (Client_ID, First_Name, Last_Name, Phone_Number, Email_Address)
VALUES
    (1001, 'Dave', 'Jones', '123-456-7890', 'Di@gmail.com'),
    (1002, 'Sarah', 'Williams', '234-567-8901', 'sarah.williams@email.com'),
    (1003, 'Michael', 'Brown', '345-678-9012', 'mbrown2025@outlook.com'),
    (1004, 'Emily', 'Davis', '456-789-0123', 'emily.davis@gmail.com'),
    (1005, 'James', 'Miller', '567-890-1234', 'james.miller@yahoo.com'),
    (1006, 'Olivia', 'Wilson', '678-901-2345', 'olivia.wilson@protonmail.com'),
    (1007, 'William', 'Moore', '789-012-3456', 'william.moore@gmail.com'),
    (1008, 'Ava', 'Taylor', '890-123-4567', 'ava.taylor@icloud.com'),
    (1009, 'Alexander', 'Anderson', '901-234-5678', 'alex.anderson@email.com'),
    (1010, 'Sophia', 'Thomas', '012-345-6789', 'sophia.thomas@gmail.com');
    
USE lana_dog_walking;

INSERT INTO walker (Walker_ID, First_Name, Last_Name, Phone_Number, Email_Address)
VALUES 
    (20001, 'Aaron', 'Donald', '456-789-0123', 'Ad@gmail.com');
    
    USE lana_dog_walking;
    INSERT INTO dog (Dog_ID, Dog_Name, Breed, Steps_In_A_Day, Weight, Client_ID)
VALUES
    (10001, 'Buddy', 'Great Dane', 465, 83, 1001),
    (10002, 'Max', 'Labrador Retriever', 480, 63, 1002),
    (10003, 'Luna', 'German Shepherd', 1178, 81, 1003),
    (10004, 'Bella', 'Golden Retriever', 1133, 91, 1004),
    (10005, 'Charlie', 'Bulldog', 408, 97, 1005),
    (10006, 'Rocky', 'Poodle', 644, 101, 1006),
    (10007, 'Daisy', 'Beagle', 453, 175, 1007),
    (10008, 'Cooper', 'Rottweiler', 559, 156, 1008),
    (10009, 'Molly', 'Yorkshire Terrier', 891, 172, 1009),
    (10010, 'Bear', 'Boxer', 413, 176, 1010);
    
INSERT INTO walk (Walk_ID, Walk_Date, Walk_Time, Duration, Status, Dog_ID, Walker_ID)
VALUES
    (3000001, '2025-03-21', '08:33:19', '01:11:00', 'Complete', 10001, 20001),
    (3000002, '2025-03-22', '06:34:19', '00:21:00', 'Complete', 10002, 20001),
    (3000003, '2025-03-23', '08:45:51', '00:27:00', 'Complete', 10003, 20001),
    (3000004, '2025-03-24', '06:39:42', '00:51:00', 'Complete', 10004, 20001),
    (3000005, '2025-03-25', '08:27:16', '00:15:00', 'Complete', 10005, 20001),
    (3000006, '2025-03-26', '08:37:35', '00:34:00', 'Complete', 10006, 20001),
    (3000007, '2025-03-27', '09:35:34', '01:04:00', 'Complete', 10007, 20001),
    (3000008, '2025-03-28', '07:56:21', '00:35:00', 'Complete', 10008, 20001),
    (3000009, '2025-03-29', '07:26:14', '00:34:00', 'Complete', 10009, 20001),
    (3000010, '2025-03-30', '10:38:40', '00:39:00', 'Complete', 10010, 20001);
    
    -- Change the Duration column to INT (minutes)
ALTER TABLE walk 
MODIFY Duration INT UNSIGNED NULL COMMENT 'Duration in minutes';

INSERT INTO walk (Walk_ID, Walk_Date, Walk_Time, Duration, Status, Dog_ID, Walker_ID)
VALUES
    (3000001, '2025-03-21', '08:33:19', 71,  'Complete', 10001, 20001),   -- 1 hour 11 min = 71 minutes
    (3000002, '2025-03-22', '06:34:19', 21,  'Complete', 10002, 20001),
    (3000003, '2025-03-23', '08:45:51', 27,  'Complete', 10003, 20001),
    (3000004, '2025-03-24', '06:39:42', 51,  'Complete', 10004, 20001),
    (3000005, '2025-03-25', '08:27:16', 15,  'Complete', 10005, 20001),
    (3000006, '2025-03-26', '08:37:35', 34,  'Complete', 10006, 20001),
    (3000007, '2025-03-27', '09:35:34', 64,  'Complete', 10007, 20001),   -- 1 hour 4 min = 64 minutes
    (3000008, '2025-03-28', '07:56:21', 35,  'Complete', 10008, 20001),
    (3000009, '2025-03-29', '07:26:14', 34,  'Complete', 10009, 20001),
    (3000010, '2025-03-30', '10:38:40', 39,  'Complete', 10010, 20001);
    
    SELECT * From walk