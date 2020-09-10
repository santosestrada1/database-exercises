-- Find employees with last name Backhouse, and group by gender
# USE employees;
# SELECT COUNT(*) FROM employees.employees
# WHERE last_name = 'Backhouse'
# GROUP BY gender;

-- Find the number of managers in each department, since the company's inception
SELECT COUNT(*) FROM employees.dept_manager
GROUP BY dept_no;
