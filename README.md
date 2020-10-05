# Employee Database: A Mystery in Two Parts

![sql.png](sql.png)

## Background

A research project on employees of the corporation from the 1980s and 1990s. All that remain of the database of employees from that period are six CSV files.


1. Data Modeling

![ERD.png](ERD.png)

2. Data Engineering

A table schema (specifying data types, primary keys, foreign keys, and other constraints) is created for each of the six CSV files and each CSV file is imported into the corresponding SQL table.

3. Data Analysis

	* List the following details of each employee: employee number, last name, first name, gender, and salary.

	* List employees who were hired in 1986.

	* List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.

	* List the department of each employee with the following information: employee number, last name, first name, and department name.

	* List all employees whose first name is "Hercules" and last names begin with "B."

	* List all employees in the Sales department, including their employee number, last name, first name, and department name.

	* List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

	* In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.


The SQL database is then imported into Pandas and  visualizations are generated for the employee data as below:

![Average-Salary-byTitle.png](Average-Salary-byTitle.png)

![salary_range_employees.png](salary_range_employees.png)


