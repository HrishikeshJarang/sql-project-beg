CREATE TABLE Country(
 country_id SERIAL PRIMARY KEY,
	country_name VARCHAR(50) UNIQUE NOT NULL
);

INSERT INTO Country(country_name)
VALUES
('India'), ('Australia'), ('South Africa'), ('New Zealand'), ('Sri Lanka'),
('England'), ('Pakistan'), ('West Indies'), ('Bangladesh'), ('Zimbabwe'),
('Afghanisthan'), ('Ireland'), ('UAE'), ('Scotland'), ('Hong Kong'), ('Kenya'), ('Oman'),
('Nepal')

SELECT * FROM Country;

CREATE TABLE League_name(
  league_id SERIAL PRIMARY KEY,
	league_code VARCHAR(10),
	league_name VARCHAR(100) 	
)

INSERT INTO League_name(league_code, league_name)
VALUES
('IPL', 'Indian Priemer League'),
('BBL', 'Big Bash League'),
('SAL', 'South Africa League'), 
(Null,Null),
('SLPL', 'Sri Lanka Priemer League'),
('ECC', 'England County Cricket'),
('PSL', 'Pakistan Super League'),
('WIL', 'West Indies League'),
('BPL', 'Bangladesh Priemer League'),
(Null, Null), (Null, Null), (Null, Null),
(Null, Null), (Null, Null), (Null, Null),
(Null, Null), (Null, Null), (Null, Null)

UPDATE League_name
SET league_name = 'Eastern Priemer League', league_code = 'EPL'
WHERE league_id = 14;

UPDATE League_name
SET league_name = 'International League T20', league_code = 'ILT20'
WHERE league_id = 13;

UPDATE League_name
SET league_name = 'New Zealand Priemer League', league_code = 'NPL'
WHERE league_id = 4;

SELECT * FROM League_name
ORDER BY league_id;

CREATE TABLE IPL(
 team_id SERIAL PRIMARY KEY,
	team_code VARCHAR(10) NOT NULL,
	team_name VARCHAR(100) NOT NULL
)

INSERT INTO IPL(team_name, team_code)
VALUES
('Royal Challenger Bangalore', 'RCB'),
('Chennai Super Kings', 'CSK'),
('Mumbai Indians', 'MI'),
('Gujarat Titans', 'GT'),
('Rajasthan Royals', 'RR'),
('Sunrisers Hyderabad', 'SRH'),
('Delhi Capitals', 'DC'),
('Lucknow Super Giants', 'LSG'),
('Kolkata Knight Riders','KKR'),
('Kings XI Punjab', 'KXIP')

SELECT * FROM IPL;

SELECT league_name, team_name, team_code FROM IPL
LEFT JOIN League_match ON
IPL.team_name = League_match.league_name;





