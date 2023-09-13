-- Sort students by the courses that they are enrolled in

USE university_schema;

SELECT s.students_firstName, s.students_lastName, c.courses_name
FROM students s
JOIN grades g ON s.students_id = g.grades_students_id
JOIN courses c ON g.grades_courses_id = c.courses_id
ORDER BY s.students_lastName, c.courses_name;
