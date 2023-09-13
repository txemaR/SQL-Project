-- Create a summary report of courses and their average grades, 
-- sorted by the most challenging course (course with the lowest average grade) 
-- to the easiest course

USE university_schema;

SELECT c.courses_name, AVG(g.grades_value) AS AvgGrade
FROM courses c
JOIN grades g ON c.courses_id = g.grades_courses_id
GROUP BY c.courses_name
ORDER BY AvgGrade;