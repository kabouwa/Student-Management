CREATE DATABASE IF NOT EXISTS DEV104 
CHARACTER SET utf8 COLLATE utf8_general_ci;
USE DEV104;

CREATE USER 'students_admin'@'%' IDENTIFIED BY 'manager_students-2026';
GRANT ALL PRIVILEGES ON DEV104.* TO 'students_admin'@'%';
FLUSH PRIVILEGES;

CREATE TABLE Student(
    idStud INT PRIMARY KEY AUTO_INCREMENT,
    firstNameStud VARCHAR(25) NOT NULL,
    lastNameStud VARCHAR(25) NOT NULL,
    ageStud INT NOT NULL,
    cityStud VARCHAR(20) NOT NULL,
    groupStud VARCHAR(10) NOT NULL

);
INSERT INTO Student(firstNameStud,lastNameStud,ageStud,cityStud,groupStud) VALUES
('Mohammed', 'Kabouwa', 19, 'Temara', 'DEV104'),
('Ali', 'Alabax', 20, 'Rabat', 'DEV103'),
('Hamza', 'Khanari', 22, 'Casablanca', 'DEV101'),
('Youssef', 'Amrani', 18, 'Sale', 'DEV104'),
('Omar', 'Bennani', 21, 'Kenitra', 'DEV102'),
('Sara', 'Alaoui', 20, 'Rabat', 'DEV103'),
('Imane', 'El Fassi', 19, 'Temara', 'DEV104'),
('Ayoub', 'Tazi', 23, 'Casablanca', 'DEV101'),
('Salma', 'Chraibi', 18, 'Sale', 'DEV102'),
('Karim', 'Mansouri', 21, 'Kenitra', 'DEV103');