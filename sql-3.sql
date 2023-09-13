-- The top grades for each student

USE university_schema;

SELECT s.students_firstName, s.students_lastName, MAX(g.grades_value) AS TopGrade
FROM students s
JOIN grades g ON s.students_id = g.grades_students_id
GROUP BY s.students_firstName, s.students_lastName
ORDER BY s.students_lastName;
