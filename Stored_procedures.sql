-- STORED PROCEDURES 

CREATE PROCEDURE large_salaries()
SELECT *
FROM employee_salary
WHERE salary >= 50000;

CALL large_salaries();

DELIMITER $$
CREATE PROCEDURE large_salaries_1()
BEGIN 
     SELECT *
     FROM employee_salary
     WHERE salary >= 50000;
     SELECT *
     FROM employee_salary
     WHERE salary >= 10000;
END $$
DELIMITER  ;

CALL large_salaries_1();


