-- 1- List the following details of each employee: employee number, last name, first name, gender, and salary.
SELECT 
    employees.emp_no AS "employee number", 
    employees.last_name AS "last name", 
    employees.first_name AS "first name", 
    employees.gender, 
    salaries.salary
FROM employees
LEFT JOIN salaries
ON(employees.emp_no=salaries.emp_no);

-- 2- List employees who were hired in 1986.
SELECT first_name, last_name
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

-- 3- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
SELECT  
    dept_manager.dept_no AS "department number", 
    departments.dept_name AS "department name", 
    dept_manager.emp_no AS "the manager's employee number", 
    employees.last_name AS "last name", 
    employees.first_name AS "first name",
    dept_manager.from_date AS "start employment dates", 
    dept_manager.to_date AS "end employment dates"
FROM dept_manager
LEFT JOIN departments
ON (dept_manager.dept_no = departments.dept_no)
LEFT JOIN employees
ON (dept_manager.emp_no = employees.emp_no);

-- 4- List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT  
    employees.emp_no AS "employee number", 
    employees.last_name AS "last name", 
    employees.first_name AS "first name",
    departments.dept_name AS "department name"
FROM employees 
JOIN dept_emp
ON (employees.emp_no = dept_emp.emp_no)
JOIN departments
ON (dept_emp.dept_no = departments.dept_no);

-- 5- List all employees whose first name is "Hercules" and last names begin with "B."
SELECT * FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

-- 6- List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT 
    dept_emp.emp_no AS "employee number", 
    employees.last_name AS "last name", 
    employees.first_name AS "first name", 
    departments.dept_name AS "department name"
FROM dept_emp
JOIN employees
ON dept_emp.emp_no = employees.emp_no
JOIN departments
ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales' ; 

-- 7- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT 
    dept_emp.emp_no AS "employee number", 
    employees.last_name AS "last name", 
    employees.first_name AS "first name", 
    departments.dept_name AS "department name"
FROM dept_emp
JOIN employees
ON dept_emp.emp_no = employees.emp_no
JOIN departments
ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales' 
OR departments.dept_name = 'Development';

-- 8- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, COUNT(last_name) AS "number of employees"
FROM employees
GROUP BY last_name
ORDER BY "number of employees" DESC;



