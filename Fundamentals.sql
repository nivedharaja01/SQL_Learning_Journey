-- WHERE --

SELECT *
FROM employee_salary
WHERE first_name = 'Leslie';

SELECT *
FROM employee_salary
WHERE salary >= 50000;

SELECT *
FROM employee_salary
WHERE salary <= 50000;

SELECT *
FROM employee_demographics
WHERE gender != 'Female';

SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01';

-- AND / OR / NOT --
SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01'
AND gender = 'male';

SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01'
OR NOT gender = 'male';

SELECT *
FROM employee_demographics 
WHERE (first_name = 'Leslie' AND age = 44)OR age > 55;

-- LIKE -- 
SELECT *
FROM employee_demographics 
WHERE first_name LIKE 'jer%';

SELECT *
FROM employee_demographics 
WHERE first_name LIKE 'a__';

SELECT *
FROM employee_demographics 
WHERE first_name LIKE 'a__%';

-- GROUP BY -- 
SELECT gender
FROM employee_demographics
GROUP BY gender;

-- AVG / MIN , MAX , COUNT -- 
SELECT gender,AVG (age), MAX(age),MIN(age),COUNT(age)
FROM employee_demographics
GROUP BY gender;

SELECT occupation
FROM employee_salary
GROUP BY occupation;

SELECT occupation, salary
FROM employee_salary
GROUP BY occupation,salary;

-- ASC / DESC -- 
-- ORDER BY -- 
SELECT *
FROM employee_demographics
ORDER BY first_name DESC;

SELECT *
FROM employee_demographics
ORDER BY gender, age DESC ;

SELECT *
FROM employee_demographics
ORDER BY 5,4 ;  

-- HAVING -- 
SELECT gender, AVG(age)
FROM employee_demographics
GROUP BY gender
HAVING AVG(age) > 40;

SELECT occupation, AVG(salary)
FROM employee_salary
WHERE occupation LIKE '%manager%'
GROUP BY occupation
HAVING AVG(salary) > 75000;

-- LIMIT -- 
SELECT *
FROM employee_demographics
ORDER BY age DESC
LIMIT 3;

SELECT *
FROM employee_demographics
ORDER BY age DESC
LIMIT 2,1;

-- ALIASING --
SELECT gender, AVG(age) AS avg_age
FROM employee_demographics
GROUP BY gender
HAVING avg_age > 40;



