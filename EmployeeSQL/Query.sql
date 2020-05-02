#1
SELECT e.emp_no, e.first_name, e.last_name, e.sex, s.salary
FROM employees AS e
JOIN salaries AS s
ON e.emp_no = s.emp_no;

#2
SELECT first_name, last_name, hire_date
FROM employees
WHERE EXTRACT(year from hire_date) = 1986;

#3
SELECT m.dept_no, d.dept_name, m.emp_no, e.last_name, e.first_name
FROM dept_manager AS m
JOIN employees AS e
ON (e.emp_no = m.emp_no)
JOIN departments AS d
ON (d.dept_no = m.dept_no);

#4
SELECT e.emp_no, e.last_name, e.first_name, n.dept_name
FROM employees AS e
JOIN dept_emp As d ON (e.emp_no = d.emp_no)
JOIN departments As n ON (d.dept_no = n.dept_no);

#5
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' and last_name LIKE 'B%';

#6
SELECT e.emp_no, e.last_name, e.first_name, n.dept_name
FROM employees AS e
JOIN dept_emp AS d ON (e.emp_no = d.emp_no)
JOIN departments AS n ON (d.dept_no = n.dept_no)
WHERE dept_name = 'Sales'

#7
SELECT e.emp_no, e.last_name, e.first_name, n.dept_name
FROM employees AS e
JOIN dept_emp AS d ON (e.emp_no = d.emp_no)
JOIN departments AS n ON (d.dept_no = n.dept_no)
WHERE dept_name = 'Sales' OR dept_name = 'Development';

#8
SELECT last_name, COUNT(last_name) AS "Last names count"
FROM employees
GROUP BY last_name
ORDER BY "Last names count" DESC;
