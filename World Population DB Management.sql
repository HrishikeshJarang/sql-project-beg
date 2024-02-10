CREATE TABLE World_Populations(
 country_id SERIAL PRIMARY KEY,
	country_name VARCHAR(200),
	country_code VARCHAR(10),
	country_area BIGINT,
	country_population BIGINT,
	migration BIGINT
);
ALTER TABLE World_Populations
ADD Density BIGINT;

INSERT INTO World_Populations(
 country_name, country_code, country_area, country_population, migration, Density
)
VALUES
('India', 'IN', '2973190', '1428627663', '	-486136', '481'),
('China', 'CH', '9388211', '1425671352', '-310220', '152'),
('United States', 'US', '9147420', '339996563', '999700', '37'),
('Indonesia', 'IN', '1811570', '277534122', '-49997', '153'),
('Nigeria', 'NI', '	910770', '223804632', '-59996', '246'),
('Russia', 'RS', '16376870', '144444359', '-136414', '9'),
('Japan', 'JP', '364555', '123294513', '99994', '338')

INSERT INTO World_Populations(
 country_name, country_code, country_area, country_population, migration, Density
)
VALUES
('Egypt', 'EG', '995450', '112716598', '-29998', '113'),
('Bangladesh', 'BA', '130170', '172954319', '-309977', '1329'),
('Brazil', 'BL', '8358140', '216422446', '6000', '26')

SELECT * FROM World_Populations;

--Which country has the highest population?
SELECT country_name, country_population FROM World_Populations
ORDER BY country_population DESC
LIMIT 1;

--Which country has the least number of people?
SELECT country_name, country_population FROM World_Populations
ORDER BY country_population
LIMIT 1;

--Which is the most densely populated country in the world?
SELECT country_name, Density FROM World_Populations
ORDER BY Density DESC
LIMIT 1;

--How many country having population density between 01 and 100
SELECT DISTINCT(country_name), Density FROM World_Populations
WHERE Density BETWEEN 1 AND 100
ORDER BY Density;

--Which countries having maximum and minimum land area
SELECT country_name, country_area FROM World_Populations
WHERE country_area = (SELECT MAX(country_area) FROM World_Populations);

SELECT country_name, country_area FROM World_Populations
WHERE country_area = (SELECT MIN(country_area) FROM World_Populations);

