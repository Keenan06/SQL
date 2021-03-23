CREATE TABLE employees (
	employee_id BIGSERIAL CONSTRAINT employee_key PRIMARY KEY,
	first_name VARCHAR(40),
	last_name VARCHAR(40),
	birth DATE,
	email VARCHAR(40),
	title_id INTEGER REFERENCES titles(title_id),
	extra_hours INTEGER REFERENCES overtime(extra_hours),
	incrsal_id INTEGER REFERENCES salary_increase(incrsal_id)
);
 CREATE TABLE salaries (
 	sal_id BIGSERIAL CONSTRAINT sal_key PRIMARY KEY,
	salary NUMERIC(10,2),
	year_tot INTEGER
 );
 CREATE TABLE titles(
	 title_id BIGSERIAL CONSTRAINT title_key PRIMARY KEY,
	 dept_id INTEGER REFERENCES departments (dept_id),
	 title VARCHAR(30)
 );
 
 CREATE TABLE overtime(
 	extra_hours BIGSERIAL CONSTRAINT extra_hours_key PRIMARY KEY,
	overtime_hrs INTEGER
 );
 
 CREATE TABLE salary_increase (
	 incrsal_id BIGSERIAL CONSTRAINT incrsal_id PRIMARY KEY,
	 sal_id INTEGER REFERENCES salaries(sal_id),
	 salinc NUMERIC(10,2)
 );
 
 CREATE TABLE departments (
 	dept_id BIGSERIAL CONSTRAINT dept_key PRIMARY KEY,
	namedep VARCHAR(35)
 );
 
 INSERT INTO overtime (overtime_hrs)
 VALUES
 	(7),(10),(21),(17),(6),(11),(4);
	
INSERT INTO salaries (salary, year_tot)
VALUES
	(10000, 2016),
	(15000, 2016),
	(20000, 2016),
	(35000, 2016),
	(40000, 2016);
	
INSERT INTO departments(namedep)
VALUES
	('Design'),
	('Procurement'),
	('Manufacturing'),
	('Marketing'),
	('Human resources');
	
INSERT INTO titles(title, dept_id)
VALUES
	('Lead designer', 1),
	('Co-Designer',1),
	('Procurement Manager',2),
	('Floor manager', 3),
	('Assembler',3),
	('Marketing consultant',4),
	('Psychologist',5);
	
INSERT INTO salary_increase(salinc, incrsal_id)
VALUES 
	(1000,1),
	(2000,2),
	(4000,3),
	(5000,4),
	(7000,5),
	(8000,6),
	(10000,7);
	
INSERT INTO employees(first_name, last_name, birth,email, title_id, extra_hours, incrsal_id)
VALUES
	('Keenan', 'Sheckles','2000-06-13', 'pienaarkeenan@gmail.com',1,7,7),
	('Kyle', 'Kats','1998-06-10', 'Kylekats@gmail.com',2,6,6),
	('Ambre', 'Carugo','1980-07-13', 'carugoambre@gmail.com',3,2,2),
	('Kayla', 'Gersbach','1999-10-11', 'gersbachkayla@gmail.com',4,1,1),
	('Cairo', 'Sourlis','1995-11-9', 'sourliscairo@gmail.com',5,3,3),
	('Tamson', 'Ball','1979-7-11', 'balltamson@gmail.com',6,4,4),
	('Arielle', 'Pieters','2000-01-01', 'pietersari@gmail.com',7,5,5);

ALTER TABLE employees ADD CONSTRAINT unique_email UNIQUE (email);	
SELECT empls.first_name, empls.last_name, empls.email, empls.birth, depar.namedep, titls.title, inc.salinc, salar.salary, overt.overtime_hrs
FROM employees As empls 
JOIN titles AS titls
ON empls.title_id = titls.title_id
JOIN departments as depar
ON titls.dept_id = depar.dept_id
JOIN salary_increase as inc
ON empls.incrsal_id = inc.incrsal_id
JOIN salaries AS salar
ON inc.sal_id = salar.sal_id
JOIN overtime AS overt
ON empls.extra_hours = overt.extra_hours;