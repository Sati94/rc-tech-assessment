---Making relationship between tables


ALTER TABLE student 
ADD COLUMN homeroom_id INT,
ADD FOREIGN KEY (homeroom_id) REFERENCES homeroom(id); 

INSERT INTO student (name, email, homeroom_id) VALUES
('John', 'john@school.com', 1),  
('Adam', 'adam@school.com', 1), 
('Lucy', 'lucy@school.com', 2); 


---Query: 

SELECT s.name 
FROM student 
JOIN homeroom h ON s.homeroom_id == homeroom_id
WHERE h.name = '9A'; 

 


