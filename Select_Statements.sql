SELECT * 
FROM Parks_and_Recreation.employee_demographics;

SELECT first_name
FROM Parks_and_Recreation.employee_demographics;

SELECT first_name, last_name, birth_date
FROM Parks_and_Recreation.employee_demographics;

SELECT first_name, last_name, birth_date,age,
age +10
FROM Parks_and_Recreation.employee_demographics;

#PEMDAS - ORDER OF CALCULATION

SELECT first_name, last_name, birth_date,age,
(age +10)*10 +10
FROM Parks_and_Recreation.employee_demographics;

SELECT DISTINCT first_name, gender
FROM Parks_and_Recreation.employee_demographics;

