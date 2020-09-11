USE employees;

-- 1) Update your queries for employees whose names start and end with 'E'.
--      Use concat() to combine their first and last name together as a single column in your results.

SELECT CONCAT(first_name, ' ', last_name)
FROM employees
WHERE last_name LIKE 'E%E'
ORDER BY emp_no;


-- 2) For your query of employees born on Christmas and hired in the 90s,
--      use datediff() to find how many days they have been working at the company
--      (Hint: You will also need to use now() or curdate())

SELECT CONCAT(first_name,' ', last_name, 'has been working for the company for ', datediff(CURDATE(), hire_date), ' days')
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
  AND (birth_date LIKE '%12-25%')
ORDER BY hire_date DESC;



############# Casey's Solution #################
USE employees;

SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY last_name DESC, first_name DESC;

SELECT * FROM employees WHERE last_name LIKE 'E%' ORDER BY emp_no DESC;

SELECT * FROM employees WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31' AND birth_date LIKE '%12-25' ORDER BY birth_date ASC, hire_date DESC;