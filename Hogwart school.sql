CREATE TABLE students(
 s_id SERIAL PRIMARY KEY,
	first_name VARCHAR(200) NOT NULL,
	last_name VARCHAR(200) NOT NULL,
	alloted_house VARCHAR(200) NOT NULL	
);

ALTER TABLE students
ADD birth_date DATE;

INSERT INTO students(
 first_name, last_name, alloted_house, birth_date
)
VALUES
('Harry', 'Potter', 'Godric Gryffindor', '31-01-1990'),
('Ron', 'Weaseley', 'Godric Gryffindor', '02-02-1990'),
('Hermoine', 'Granger', 'Godric Gryffindor', '20-03-1990'),
('Draco', 'Malfoy', 'Salazar Slytherin', '15-04-1990'),
('Cho', 'Chang', 'Rowena Ravenclaw', '10-01-1991'),
('Dolores', 'Umbridge', 'Helga Hufflepuff', '25-02-1992'),
('Gregory', 'Goyle', 'Salazar Slytherin', '05-09-1989'),
('Peter', 'Pategrew', 'Rowena Ravenclaw', '06-12-1985')

SELECT * FROM students;

CREATE TABLE school_info(
  standard INT NOT NULL,
	house_name VARCHAR(200) NOT NULL,
	sport VARCHAR NOT NULL,
	teacher_name VARCHAR(200) NOT NULL
);
ALTER TABLE school_info
ADD birth_date DATE;

ALTER TABLE school_info
DROP COLUMN sport;
ALTER TABLE school_info
DROP COLUMN standard;

INSERT INTO school_info(
  house_name, teacher_name, birth_date
)
VALUES
('Godric Gryffindor', 'Albus Dumbledore', '01-01-1950'),
('Godric Gryffindor', 'Minerva McGonagall', '10-10-1950'),
('Salazar Slytherin', 'Severus Snape', '20-05-1970'),
('Rowena Ravenclaw', 'Sybill Patricia Trelawney', '25-03-1980'),
('Helga Hufflepuff', 'Pomona Sprout', '03-02-1980'),
('Salazar Slytherin', 'Quirinus Quirrell', '15-01-1980')

SELECT * FROM school_info;

SELECT first_name, last_name, teacher_name, house_name
FROM students
INNER JOIN school_info
ON students.alloted_house = school_info.house_name;

SELECT DISTINCT(teacher_name, house_name)
FROM school_info;


