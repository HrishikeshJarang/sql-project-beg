CREATE TABLE City(
 city_id SERIAL PRIMARY KEY,
	city_name VARCHAR(17) NOT NULL,
	country_code VARCHAR(3) NOT NULL,
	district VARCHAR(20) NOT NULL,
	population INTEGER NOT NULL
);
ALTER TABLE City
drop column district;
ALTER TABLE City
ADD state_name VARCHAR(50) NOT NULL;

--Change column Order
CREATE TABLE City_data(
 city_id SERIAL PRIMARY KEY,
	country_code VARCHAR(3) NOT NULL,
	state_name VARCHAR(50) NOT NULL,
	city_name VARCHAR(17) NOT NULL,
	population INTEGER NOT NULL
)

INSERT INTO City_data (city_id, country_code, state_name, city_name, population)
SELECT city_id, country_code, state_name, city_name, population
FROM City;

INSERT INTO City_data
(city_name, state_name, country_code, population)
VALUES
('New York City', 'New York', 'USA', '8089689'),
('Los Angeles', 'California', 'USA', '3790742'),
('Chicago', 'Illinious', 'USA', '2599059'),
('Houstan', 'Texas', 'USA', '2325324'),
('Phoenix', 'Arizona', 'USA', '1682515'),
('Philadephia', 'Pennsylvania', 'USA', '1522814'),
('Dallas', 'Texas', 'USA', '1317210'),
('Austin', 'Texas', 'USA', '984655'),
('San Jose', 'California', 'USA', '950767'),
('San Antonio', 'Texas', 'USA', '1510687'),
('San Diego', 'California', 'USA', '1394518'),
('San Fransico', 'California', 'USA', '802805'),
('Denver', 'Colorado', 'USA', '717110'),
('Las Vegas', 'Nevada', 'USA', '667282'),
('Boston', 'Massachusetts', 'USA', '643044'),
('Kansas City', 'Missouri', 'USA', '509993'),
('Miami', 'Florida', 'USA', '464544'),
('Oakland', 'California', 'USA', '419077'),
('Cleveland', 'Ohio', 'USA', '354043'),
('Orlando', 'Florida', 'USA', '328535')

SELECT * FROM City_data;

--Number of City with population greater than 1000000
SELECT COUNT(population) FROM City_data
WHERE population > 1000000;

--City Names which are situated in State California
SELECT city_name FROM City_data
WHERE state_name = 'California';









































