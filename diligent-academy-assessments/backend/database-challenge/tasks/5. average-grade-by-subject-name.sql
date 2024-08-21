---Created Table student_subject query

SELECT AVG(ss.grade) AS average_grade
FROM student_subject ss
JOIN subject s ON ss.subject_id = s.id
WHERE s.name = 'Algebra';