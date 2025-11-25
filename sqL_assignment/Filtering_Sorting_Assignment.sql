-- Employees Table: Full SQL Script with Detailed Comments

-- 1. Create the Employees table
CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,                -- Unique Employee ID
    EmpName VARCHAR(100),                 -- Employee full name
    Department VARCHAR(50),               -- Department name
    City VARCHAR(50),                     -- Work location
    Salary INT,                           -- Monthly salary
    HireDate DATE                         -- Date of joining
);

-- 2. Insert sample employee data (10 rows)
INSERT INTO Employees VALUES
(101, 'Rahul Mehta',  'Sales',     'Delhi',     55000, '2019-09-25'),
(102, 'Priya Sharma', 'HR',        'Mumbai',    62000, '2021-03-10'),
(103, 'Aman Singh',   'IT',        'Bengaluru', 72000, '2022-01-14'),
(104, 'Neha Patel',   'Marketing', 'Delhi',     48000, '2018-07-22'),
(105, 'Karan Joshi',  'IT',        'Pune',      45000, '2019-12-11'),
(106, 'Divya Nair',   'HR',        'Chennai',   81000, '2020-05-28'),
(107, 'Raj Kumar',    'Finance',   'Delhi',     60000, '2021-08-03'),
(108, 'Simran Kaur',  'IT',        'Mumbai',    58000, '2022-02-18'),
(109, 'Arjun Reddy',  'Sales',     'Hyderabad', 70000, '2023-01-15'),
(110, 'Anjali Das',   'Sales',     'Kolkata',   51000, '2020-04-12');

-- 3. Queries Section: Filtering & Sorting

-- Q1: Show employees working in either the 'IT' or 'HR' departments.
SELECT * FROM Employees
WHERE Department IN ('IT', 'HR');

-- Q2: Retrieve employees whose department is in 'Sales', 'IT', or 'Finance'.
SELECT * FROM Employees
WHERE Department IN ('Sales', 'IT', 'Finance');

-- Q3: Display employees whose salary is between ₹50,000 and ₹70,000.
SELECT * FROM Employees
WHERE Salary BETWEEN 50000 AND 70000;

-- Q4: List employees whose names start with the letter 'A'.
SELECT * FROM Employees
WHERE EmpName LIKE 'A%';

-- Q5: Find employees whose names contain the substring 'an'.
SELECT * FROM Employees
WHERE EmpName LIKE '%an%';

-- Q6: Show employees who are from 'Delhi' or 'Mumbai' and earn more than ₹55,000.
SELECT * FROM Employees
WHERE City IN ('Delhi', 'Mumbai')
  AND Salary > 55000;

-- Q7: Display all employees except those from the 'HR' department.
SELECT * FROM Employees
WHERE Department <> 'HR';

-- Q8: Get all employees hired between 2019 and 2022, ordered by HireDate.
SELECT * FROM Employees
WHERE HireDate BETWEEN '2019-01-01' AND '2022-12-31'
ORDER BY HireDate ASC;
