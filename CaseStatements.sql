SELECT first_name, last_name, age,
CASE 
      WHEN age <= 30 THEN 'young'
      WHEN age BETWEEN 30 AND age < 50 THEN 'old'
      WHEN age >= 50 THEN 'On Deaths Door'
END AS Age_Bracket
FROM employee_demographics;

SELECT first_name, last_name, salary,
CASE
    WHEN salary < 50000 THEN salary * 1.05
	WHEN salary > 50000 THEN salary * 1.07
    WHEN dept_id = 6 THEN salary * 1.10
END AS new_salary
FROM employee_salary;


