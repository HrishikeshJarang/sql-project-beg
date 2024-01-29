CREATE TABLE student(
 student_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	homeroom_number INTEGER ,
	phone VARCHAR(50) UNIQUE NOT NULL,
	email VARCHAR(50) UNIQUE,
	graduation_year INTEGER 
);

CREATE TABLE teacher(
 teacher_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	homeroom_number INTEGER,
	phone VARCHAR(50) NOT NULL,
	email VARCHAR(50) UNIQUE NOT NULL,
	department VARCHAR(50) NOT NULL
);

INSERT INTO student(
first_name,last_name,homeroom_number,phone,graduation_year
)
VALUES
('Mark','Watney','5','777-555-1234','2035');

SELECT * FROM student;

INSERT INTO teacher
( first_name,last_name,homeroom_number,phone,department,email
)
VALUES
('Jonas', 'Salk','5','777-555-4321','Biology',
 'jsalk@school.org');
 
SELECT * FROM teacher; 



