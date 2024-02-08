CREATE TABLE Person(
 person_id SERIAL PRIMARY KEY,
	first_name VARCHAR(200),
	last_name VARCHAR(200)
)

INSERT INTO Person(
 first_name, last_name
)
VALUES
('Allen', 'Wang'),
('Bob', 'Alice')

SELECT * FROM Person;


CREATE TABLE Address(
 address_id SERIAL PRIMARY KEY,
	person_id INTEGER UNIQUE NOT NULL,
	city VARCHAR(100),
	state_name VARCHAR(100)
)

INSERT INTO Address(
 person_id, city, state_name
)
VALUES
('01', NULL, NULL),
('02', 'New York City', 'New York'),
('03', 'California City', 'California')

SELECT first_name, last_name, city, state_name
FROM Person
INNER JOIN Address ON
Person.person_id = Address.person_id;

