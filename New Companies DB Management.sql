CREATE TABLE New_company(
 company_code VARCHAR(100) PRIMARY KEY NOT NULL,
	founder VARCHAR(50) NOT NULL
);

INSERT INTO New_company(company_code, founder)
VALUES
('C1', 'Sudha'), ('C2', 'Narayan')

SELECT * FROM New_company;

CREATE TABLE Leadmanager(
	lead_manager_code VARCHAR(100) PRIMARY KEY NOT NULL,
 	company_code VARCHAR(100) REFERENCES New_company(company_code) NOT NULL
)

INSERT INTO Leadmanager(lead_manager_code, company_code)
VALUES
('L1', 'C1'), ('L2', 'C2')

SELECT * FROM Leadmanager;

CREATE TABLE Senior_manager(
 senior_manager_code VARCHAR(100) PRIMARY KEY,
	lead_manager_code VARCHAR(100) NOT NULL REFERENCES Leadmanager(lead_manager_code),
	company_code VARCHAR(100) NOT NULL REFERENCES New_company(company_code)
)

INSERT INTO Senior_manager(senior_manager_code, lead_manager_code, company_code)
VALUES
('SM1', 'L1', 'C1'),
('SM2', 'L1', 'C1'),
('SM3', 'L2', 'C2')

SELECT * FROM Senior_manager;

CREATE TABLE Manager(
 manager_code VARCHAR(100) PRIMARY KEY,
	senior_manager_code VARCHAR(100) NOT NULL REFERENCES Senior_manager(senior_manager_code),
	lead_manager_code VARCHAR(100) NOT NULL REFERENCES Leadmanager(lead_manager_code),
	company_code VARCHAR(100) NOT NULL REFERENCES New_company(company_code)
)


INSERT INTO Manager(manager_code, senior_manager_code, lead_manager_code, company_code)
VALUES
('M1', 'SM1', 'L1', 'C1'),
('M2', 'SM2', 'L2', 'C2'),
('M3', 'SM3', 'L2', 'C2')

SELECT * FROM Manager;

CREATE TABLE Employee(
 employee_code VARCHAR(100) PRIMARY KEY,
	manager_code VARCHAR(100) NOT NULL REFERENCES Manager(manager_code),
	senior_manager_code VARCHAR(100) NOT NULL REFERENCES Senior_manager(senior_manager_code),
	lead_manager_code VARCHAR(100) NOT NULL REFERENCES Leadmanager(lead_manager_code),
	company_code VARCHAR(100) NOT NULL REFERENCES New_company(company_code)
)

INSERT INTO Employee(employee_code, manager_code, senior_manager_code, lead_manager_code, company_code)
VALUES
('E1', 'M1', 'SM1', 'L1', 'C1'),
('E2', 'M1', 'SM1', 'L1', 'C1'),
('E3', 'M2', 'SM3', 'L2', 'C2'),
('E4', 'M3', 'SM3', 'L2', 'C2')

SELECT * FROM Employee;

SELECT New_company.company_code, New_company.founder,
COUNT(DISTINCT(Leadmanager.lead_manager_code)) AS Lead_manager,
COUNT(DISTINCT(Senior_manager.senior_manager_code)) AS Senior_manager,
COUNT(DISTINCT(Manager.manager_code)) AS Manager,
COUNT(DISTINCT(Employee.employee_code)) AS Employee
FROM New_company
LEFT JOIN  
--All data from left table(New_company) with similar data from right table(Leadmanager)
Leadmanager ON New_company.company_code = Leadmanager.company_code
LEFT JOIN 
--All data from left table(Leadmanager) with similar data from right table(Senior_manager)
    Senior_manager ON Leadmanager.lead_manager_code = Senior_manager.lead_manager_code AND 
	Leadmanager.company_code = Senior_manager.company_code
LEFT JOIN
--All data from left table(Senior_manager) with similar data from right table(Manager)
    Manager ON Senior_manager.senior_manager_code = Manager.senior_manager_code AND 
	Senior_manager.company_code = Manager.company_code
LEFT JOIN 
--All data from left table(Manager) with similar data from right table(Employee)
    Employee ON Manager.manager_code = Employee.manager_code AND 
	Manager.company_code = Employee.company_code
GROUP BY New_company.company_code
--Same for all code


