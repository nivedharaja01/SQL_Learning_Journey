-- CTE 

WITH cte_example AS 
(
SELECT gender, AVG(salary) AS avg_salary,
MAX(salary) AS max_sal,
MIN(salary) AS min_sal,
COUNT(salary) AS count_sal
FROM employee_demographics dem
JOIN employee_salary sal
     ON dem.employee_id = sal.employee_id
GROUP BY gender
)
SELECT *
FROM cte_example;


WITH cte_example AS 
(
SELECT gender, employee_id, birth_date
FROM employee_demographics 
WHERE birth_date > '1985-01-01'
),
CTE_example2 AS
(SELECT *
FROM employee_salary
WHERE salary > 50000
)
SELECT *
FROM cte_example
JOIN CTE_example2
    ON cte_example.employee_id = CTE_example2.employee_id;
    
WITH cte_example(Gender, AVG_sal,MIN_sal,MAX_sal,COUNT_sal) AS 
(
SELECT gender, AVG(salary) AS avg_salary,
MAX(salary) AS max_sal,
MIN(salary) AS min_sal,
COUNT(salary) AS count_sal
FROM employee_demographics dem
JOIN employee_salary sal
     ON dem.employee_id = sal.employee_id
GROUP BY gender
)
SELECT *
FROM cte_example;