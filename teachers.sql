SELECT DISTINCT last_name, school, hire_date FROM teachers
ORDER BY school ASC, hire_date DESC;
SELECT last_name, school, hire_date
FROM teachers
WHERE school = 'Myers Middle School';
SELECT first_name, last_name, school
FROM teachers
WHERE first_name = 'Janet';
SELECT school
FROM teachers
WHERE school != 'F.D. Roosevelt HS';

SELECT first_name, last_name, salary
FROM teachers
WHERE salary >= 43500 AND (school ='Myers Middle School');


SELECT first_name, last_name, school, hire_date, salary
FROM teachers
WHERE school LIKE '%Roos%'
ORDER BY hire_date DESC;

SELECT school, last_name 
FROM teachers
ORDER BY school ASC, last_name ASC;

SELECT first_name, salary
FROM teachers
Where first_name LIKE 'S%'
	AND salary> 40000;
	

SELECT first_name, hire_date, salary
FROM teachers
WHERE hire_date >= '2010-01-01'
ORDER BY salary DESC;

COPY teachers TO '/Users/keenanpienaar/Desktop/SQL/teachers.txt' WITH (FORMAT CSV, HEADER, DELIMITER '|');