---Create subject table

CREATE TABLE subject (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) UNIQUE

);

INSERT INTO subject (name) VALUES
('Algebra'),
('Biology'),
('World History');


---Creating common table

CREATE TABLE student_subject(
    student_email VARCHAR(255),
    subject_id INT,
    grade INT,
    FOREIGN KEY (student_email) REFERENCES student(email),
    FOREIGN KEY (subject_id) REFERENCES subject(id),
    PRIMARY KEY (student_email, subject_id)
);

SELECT id FROM subject WHERE name = 'Algebra';        
SELECT id FROM subject WHERE name = 'Biology';        ---Which id is which subject name
SELECT id FROM subject WHERE name = 'World History'; 


INSERT INTO student_subject (student_email, subject_id, grade) VALUES
('john@school.com', 1, 3),  
('john@school.com', 3, 5),  
('adam@school.com', 1, 4),  
('adam@school.com', 2, 3), 
('lucy@school.com', 1, 5);

