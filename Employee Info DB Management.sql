CREATE TABLE employee_info(
 employee_id SERIAL PRIMARY KEY,
	emp_first VARCHAR(100) NOT NULL,
	emp_last VARCHAR(100) NOT NULL,
	dept_name VARCHAR(100) NOT NULL
);

ALTER TABLE employee_info
ADD hire_date DATE;

INSERT INTO employee_info
(emp_first, emp_last, dept_name, hire_date)
VALUES
('Alfreds', 'Futterkiste', 'Sales', '2010-05-01')

INSERT INTO employee_info
(emp_first, emp_last, dept_name, hire_date)
VALUES
('Ana', 'Trujillo', 'Marketing', '2010-06-01'),
('Emparedados', 'Yhelados', 'Sales', '2011-05-01'),
('Antonio', 'Moreno', 'Design', '2011-06-01'),
('Thomas', 'Hardy', 'Account', '2009-04-01'),
('Yang', 'Wang', 'Design', '2009-05-01'),
('Janine', 'Labrune', 'Sales', '2009-06-01'),
('Ann', 'Devon', 'Account', '2010-03-01'),
('Maria', 'Larsson', 'Sales', '2011-02-01'),
('Carine', 'Schmitt', 'Marketing', '2008-05-01'),
('Howard', 'Snyder', 'Marketing', '2008-05-01'),
('Philip', 'Cramer', 'Sales', '2007-06-01'),
('John', 'Steel', 'Design', '2007-09-01')

SELECT * FROM employee_info

CREATE TABLE Country_infos(
 	country_name VARCHAR(50) PRIMARY KEY,
	country_id INTEGER REFERENCES employee_info(employee_id)
)

INSERT INTO Country_infos(country_name)
VALUES
('Germany'), ('Australia'), ('USA'),
('Africa'), ('England'), ('Austria'),
('Spain'), ('France'), ('Portugal'), ('Argentina'),
('Poland'), ('Switzerland'), ('Ireland')

SELECT * FROM Country_info;

SELECT emp_first, emp_last, hire_date FROM employee_info
WHERE dept_name = 'Sales';

SELECT emp_first, emp_last, country_name FROM employee_info
INNER JOIN Country_info ON
employee_info.employee_id = Country_info.country_id;

DELETE FROM employee_info
WHERE employee_id IN (14,15,16,17,18,19,20,21,22,23,24,25,26,27);

