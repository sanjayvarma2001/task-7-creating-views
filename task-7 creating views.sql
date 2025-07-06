DROP TABLE IF EXISTS employees;
CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    salary INT
);

INSERT INTO employees (id, name, department, salary) VALUES
(1, 'Alice', 'HR', 60000),
(2, 'Bob', 'Engineering', 80000),
(3, 'Charlie', 'Engineering', 90000),
(4, 'David', 'Sales', 70000);

CREATE VIEW employee_salary_view AS
SELECT 
    name,
    department,
    salary,
    CASE 
        WHEN salary >= 80000 THEN 'High'
        WHEN salary >= 60000 THEN 'Medium'
        ELSE 'Low'
    END AS salary_status
FROM employees;

SELECT * FROM employee_salary_view;
