-- The average grade that is given by each professor

USE university_schema;

SELECT p.professors_firstName, p.professors_lastName, AVG(g.grades_value) AS AvgGrade
FROM professors p
JOIN courses c 
ON p.professors_id = c.courses_professors_id
JOIN grades g 
ON c.courses_id = g.grades_courses_id
GROUP BY p.professors_firstName, p.professors_lastName
ORDER BY  p.professors_lastName;