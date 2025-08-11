-- TRIGGERS AND EVENTS --

SELECT *
FROM employee_demographics;

SELECT *
FROM employee_salary;

DROP TRIGGER IF EXISTS employee_insert;

DELIMITER $$
CREATE TRIGGER employee_insert
AFTER INSERT ON employee_salary
FOR EACH ROW
BEGIN
  INSERT INTO employee_demographics (employee_id, first_name, last_name)
  VALUES (NEW.employee_id, NEW.first_name, NEW.last_name);
END $$
DELIMITER ;

INSERT INTO employee_salary(employee_id,first_name,last_name,occupation,salary,dept_id)
VALUES(13,'Nivedha','Raja','Business Analyst',1000000,NULL);

SHOW TRIGGERS WHERE `Table` = 'employee_salary';

-- EVENTS 

DROP EVENT IF EXISTS delete_retires;

DELIMITER $$
CREATE EVENT delete_retires
ON SCHEDULE EVERY 30 SECOND
DO 
BEGIN
DELETE 
FROM employee_demographics
WHERE age >= 60;
END $$
DELIMITER ;

SHOW VARIABLES LIKE 'event%';
 