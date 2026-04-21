USE lana_dog_walking;

INSERT INTO Customers (first_name, last_name, phone_number, email)
VALUES
('John', 'Doe', '555-123-4567', 'john@email.com'),
('Sarah', 'Miller', '555-234-5678', 'sarah.miller@email.com'),
('David', 'Johnson', '555-345-6789', 'david.johnson@email.com'),
('Emily', 'Clark', '555-456-7890', 'emily.clark@email.com'),
('Michael', 'Brown', '555-567-8901', 'michael.brown@email.com'),
('Jessica', 'Davis', '555-678-9012', 'jessica.davis@email.com'),
('Daniel', 'Wilson', '555-789-0123', 'daniel.wilson@email.com'),
('Ashley', 'Martinez', '555-890-1234', 'ashley.martinez@email.com'),
('Chris', 'Anderson', '555-901-2345', 'chris.anderson@email.com'),
('Amanda', 'Thomas', '555-012-3456', 'amanda.thomas@email.com'),
('Brian', 'Taylor', '555-111-2222', 'brian.taylor@email.com');

-- =========================
-- Dogs
-- =========================
INSERT INTO Dogs (first_name, last_name, phone_number, email)
VALUES
('Buddy', 'Doe', '555-123-4567', 'john@email.com'),
('Bella', 'Miller', '555-234-5678', 'sarah.miller@email.com'),
('Max', 'Johnson', '555-345-6789', 'david.johnson@email.com'),
('Lucy', 'Clark', '555-456-7890', 'emily.clark@email.com'),
('Charlie', 'Brown', '555-567-8901', 'michael.brown@email.com'),
('Daisy', 'Davis', '555-678-9012', 'jessica.davis@email.com'),
('Rocky', 'Wilson', '555-789-0123', 'daniel.wilson@email.com'),
('Luna', 'Martinez', '555-890-1234', 'ashley.martinez@email.com'),
('Cooper', 'Anderson', '555-901-2345', 'chris.anderson@email.com'),
('Bailey', 'Thomas', '555-012-3456', 'amanda.thomas@email.com'),
('Milo', 'Taylor', '555-111-2222', 'brian.taylor@email.com');

-- =========================
-- Walkers
-- =========================
INSERT INTO Walkers (first_name, last_name, phone_number, email)
VALUES
('Jake', 'Peterson', '555-222-3333', 'jake.peterson@email.com'),
('Olivia', 'Reed', '555-333-4444', 'olivia.reed@email.com'),
('Ethan', 'Cook', '555-444-5555', 'ethan.cook@email.com'),
('Sophia', 'Morgan', '555-555-6666', 'sophia.morgan@email.com'),
('Liam', 'Bell', '555-666-7777', 'liam.bell@email.com'),
('Chloe', 'Murphy', '555-777-8888', 'chloe.murphy@email.com'),
('Noah', 'Bailey', '555-888-9999', 'noah.bailey@email.com'),
('Ava', 'Rivera', '555-999-0000', 'ava.rivera@email.com'),
('Logan', 'Cooper', '555-101-2020', 'logan.cooper@email.com'),
('Mia', 'Richardson', '555-202-3030', 'mia.richardson@email.com'),
('Lucas', 'Cox', '555-303-4040', 'lucas.cox@email.com');

-- =========================
-- Walks
-- =========================
INSERT INTO Walks (walk_date, walk_time, duration, status, dog_id, walker_id)
VALUES
('2026-04-20', '09:00:00', 30, 'completed', 1, 1),
('2026-04-20', '10:00:00', 45, 'completed', 2, 2),
('2026-04-20', '11:00:00', 60, 'completed', 3, 3),
('2026-04-21', '09:30:00', 30, 'scheduled', 4, 4),
('2026-04-21', '10:30:00', 45, 'scheduled', 5, 5),
('2026-04-21', '11:30:00', 60, 'scheduled', 6, 6),
('2026-04-22', '08:00:00', 20, 'scheduled', 7, 7),
('2026-04-22', '09:00:00', 30, 'scheduled', 8, 8),
('2026-04-22', '10:00:00', 45, 'scheduled', 9, 9),
('2026-04-22', '11:00:00', 60, 'scheduled', 10, 10),
('2026-04-23', '12:00:00', 30, 'scheduled', 11, 11);

SELECT * FROM walks;