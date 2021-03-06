--table schema

--tables with PK's
--departments: departments.csv table creation

CREATE TABLE departments (
	dept_no VARCHAR(5),
	dept_name VARCHAR(20),
	PRIMARY KEY (dept_no)
);

SELECT * FROM departments

--employees: employees.csv table creation

CREATE TABLE employees(
	emp_no INT,
	birth_date DATE,
	first_name VARCHAR(20),
	last_name VARCHAR(20),
	gender CHAR,
	hire_date DATE,
	PRIMARY KEY (emp_no)
);

SELECT * FROM employees

--tables with FK's

--dept_emp: dept_emp.csv table creation

CREATE TABLE dept_emp (
	emp_no INT,
	dept_no VARCHAR(5),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

SELECT * FROM dept_emp

--dept_manager: dept_manager.csv table creation

CREATE TABLE dept_manager(
	dept_no VARCHAR(10),
	emp_no INT,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * FROM dept_manager

--salaries: salaries.csv table creation

CREATE TABLE salaries(
	emp_no BIGINT,
	salary BIGINT,
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);

SELECT * FROM salaries

--titles: titles.csv table creation

CREATE TABLE titles(
	emp_no INT,
	title VARCHAR(20),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
)

SELECT * FROM titles