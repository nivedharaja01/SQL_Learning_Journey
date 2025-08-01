-- JOINS --

-- INNER JOIN - THE SIMPLE JOIN PERFORMED TO RETURN THE SAME VALUE FROM BOTH THE TABLES --
SELECT *
FROM employee_salary;

SELECT *
FROM employee_demographics;

SELECT *
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
     ON dem.employee_id = sal.employee_id
;

SELECT dem.employee_id, age, gender
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
     ON dem.employee_id = sal.employee_id
;

-- OUTER JOIN --
-- LEFT OUTER JOIN -- IT RETURNS EVERYTHING FROM LEFT TABLE AND THE MATCH FROM RIGHT TABLE --

SELECT *
FROM employee_demographics AS dem
LEFT JOIN employee_salary AS sal
     ON dem.employee_id = sal.employee_id
;

-- RIGHT JOIN --
SELECT *
FROM employee_demographics AS dem
RIGHT JOIN employee_salary AS sal
     ON dem.employee_id = sal.employee_id;

-- SELF JOIN --
SELECT emp1.employee_id AS emp_santa,
emp1.first_name AS first_name_santa,
emp1.last_name AS last_name_santa,
emp2.employee_id AS emp_name,
emp2.first_name AS first_name,
emp2.last_name AS last_name
FROM employee_salary emp1
JOIN employee_salary emp2
    ON emp1.employee_id + 1 = emp2.employee_id
    ;

-- JOINING MULTIPLE TABLES TOGETHER -- 
SELECT *
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
     ON dem.employee_id = sal.employee_id
INNER JOIN parks_departments pd
     ON sal.dept_id = pd.department_id;

SELECT *
FROM parks_departments;








