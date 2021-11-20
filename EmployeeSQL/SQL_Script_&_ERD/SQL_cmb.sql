--List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT i.emp_no, i.first_name, i.last_name, i.sex, f.salary
FROM employees i
JOIN salaries f
ON (i.emp_no = f.emp_no);

--List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name, last_name, hire_date
from employees
where hire_date BETWEEN '1986-01-01' and '1986-12-31';

--List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT i.emp_no, i.first_name, i.last_name, f.dept_no, e.dept_name
FROM employees i
JOIN dept_manager f
ON (i.emp_no = f.emp_no)
JOIN departments e
ON  (f.dept_no = e.dept_no);

--List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT i.emp_no, i.first_name, i.last_name, e.dept_name
FROM employees i
JOIN dept_emp f
ON (i.emp_no = f.emp_no)
JOIN departments e
ON  (f.dept_no = e.dept_no)

--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

--List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT i.emp_no, i.last_name, i.first_name, e.dept_name
FROM employees i
JOIN dept_emp f
ON (i.emp_no = f.emp_no)
JOIN departments e
ON  (f.dept_no = e.dept_no)
WHERE dept_name = 'Sales';

--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT i.emp_no, i.last_name, i.first_name,  e.dept_name
FROM employees i
JOIN dept_emp f
ON (i.emp_no = f.emp_no)
JOIN departments e
ON  (f.dept_no = e.dept_no)
WHERE dept_name = 'Sales' OR dept_name = 'Development';

--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, COUNT(last_name)
FROM employees
GROUP BY last_name
ORDER BY last_name DESC;
