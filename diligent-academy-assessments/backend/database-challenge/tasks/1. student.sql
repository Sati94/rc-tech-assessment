---Create student table

CREATE TABLE student (

 name VARCHAR(100),
 email VARCHAR(255)UNIQUE
);

INSERT INTO student (name, email) VALUES
('John', 'john@school.com'),
('Adam', 'adam@school.com'),
('Lucy', 'lucy@school.com');