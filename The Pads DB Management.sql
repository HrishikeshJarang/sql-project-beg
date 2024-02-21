CREATE TABLE Occupation(
 person_name VARCHAR(50) NOT NULL,
	person_occupation VARCHAR(50) NOT NULL
)

INSERT INTO Occupation(person_name, person_occupation)
VALUES
('Samantha', 'Doctor'), ('Julia', 'Actor'),
('Maria', 'Actor'), ('Meera', 'Singer'),
('Ashely', 'Professor'), ('Ketty', 'Professor'),
('Christeen', 'Professor'), ('Jane', 'Actor'),
('Jenny', 'Doctor'), ('Priya', 'Singer')

SELECT CONCAT(person_name, '(', LEFT(person_occupation, 1), ')') AS Full_name
FROM Occupation
ORDER BY person_name;

SELECT 'There are a total of ' || COUNT(person_occupation) || ' ' || person_occupation || 's.' AS occupation_count
FROM Occupation
GROUP BY Occupation.person_occupation
ORDER BY COUNT(person_occupation) ASC;