-- STRING FUNCTIONS --

SELECT LENGTH('skyfall');

SELECT first_name, LENGTH(first_name)
FROM employee_demographics
ORDER BY 2;

SELECT UPPER('skyfall');

SELECT LOWER('SKYFall');

SELECT UPPER(first_name), LOWER(last_name)
FROM employee_demographics;

SELECT TRIM('      skyfall      ');

SELECT LTRIM('      skyfall      ');

SELECT RTRIM('      skyfall      ');

SELECT first_name, 
LEFT(first_name, 4),
RIGHT(first_name, 4)
FROM employee_demographics;

-- SUBSTRING --

SELECT first_name, 
LEFT(first_name, 4),
RIGHT(first_name, 4),
SUBSTRING(first_name , 3, 2)
FROM employee_demographics;

SELECT first_name, 
LEFT(first_name, 4),
RIGHT(first_name, 4),
SUBSTRING(birth_date,6,2) AS birth_month
FROM employee_demographics;

-- REPLACE -- 
SELECT first_name, REPLACE(first_name, 'a','z')
FROM employee_demographics;

-- LOCATE --
SELECT LOCATE('x','Alexander');

SELECT first_name, LOCATE('An',first_name)
FROM employee_demographics;

SELECT first_name, last_name,
CONCAT(first_name,'  ',last_name) AS full_name
FROM employee_demographics;
