-- Create a script that populates all of the database tables with sample data

USE university_schema;

INSERT INTO students(students_firstName, students_lastName, students_email)
VALUES 
	('John', 'Rodriguez', 'jrodriguez@university.com'),
    ('Anne', 'Martin', 'amartin@university.com'),
    ('James', 'Bond', 'jbond@university.com'),
    ('Jennifer', 'Lopez', 'jlopez@university.com'),
    ('Marcus', 'Jones', 'mjones@university.com'),
    ('Kristine', 'Aguilera', 'kaguilera@university.com'),
    ('Fernando', 'Gonzalez', 'fgonzalez@university.com'),
    ('Leonardo', 'Davinci', 'ldavinci@university.com'),
    ('Christina', 'Jordan', 'cjordan@university.com'),
    ('Lisa', 'Simpson', 'lsimpson@university.com');
    
INSERT INTO professors(professors_firstName, professors_lastName, professors_email)
VALUES 
    ('Albert', 'Einstein', 'aeinstein@university.com'),
    ('Albus', 'Dumbledore', 'aumbledore@university.com'),
    ('Sidney', 'Poitier', 'spoitier@university.com'),
    ('Jack', 'Black', 'jblack@university.com');

INSERT INTO courses(courses_name, courses_professors_id)
VALUES 
	("Theoretical Physics", 1),
	("Magic", 2),
	("Maths", 3),
	("Rock", 4),
	("Quantum Physics", 1);
    
INSERT INTO grades(grades_students_id, grades_courses_id, grades_value)
VALUES
	(1, 1, 7),
    (1, 2, 5),
	(1, 3, 8),
    (1, 4, 10),
    (2, 1, 4),
    (2, 3, 3),
    (3, 4, 6),
    (4, 2, 6),
    (5, 3, 4),
    (5, 4, 8),
    (6, 3, 7),
    (7, 1, 5),
    (7, 2, 9),
    (7, 3, 6),
    (8, 1, 5),
    (8, 4, 5),
    (9, 2, 9),
    (9, 3, 9),
    (9, 4, 6),
	(10, 1, 6),
    (10, 2, 7),
    (10, 5, 8);    
    