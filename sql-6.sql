-- Finding which student and professor have the most courses in common

USE university_schema;

SELECT s.students_firstName, s.students_lastName,
	COUNT(c.courses_id) AS CommonCoursesCount,
	p.professors_firstName, p.professors_lastName
FROM students s
JOIN grades g ON s.students_id = g.grades_students_id
JOIN courses c ON g.grades_courses_id = c.courses_id
JOIN professors p ON c.courses_professors_id = p.professors_id
GROUP BY s.students_firstName, s.students_lastName, p.professors_firstName, p.professors_lastName
ORDER BY CommonCoursesCount DESC
LIMIT 1;