-- Basic INNER JOIN

-- Q1
SELECT
    e.EmployeeName,
    d.DepartmentName
FROM Employees e
INNER JOIN Departments d
ON e.DepartmentID = d.DepartmentID;

-- Q2
SELECT
    p.ProjectName,
    d.DepartmentName
FROM Projects p
INNER JOIN Departments d
ON p.DepartmentID = d.DepartmentID;

-- Q3
SELECT
    e.EmployeeName,
    p.ProjectName
FROM EmployeeProjects ep
INNER JOIN Employees e
ON ep.EmployeeID = e.EmployeeID
INNER JOIN Projects p
ON ep.ProjectID = p.ProjectID;

-- Q4
SELECT
    e.EmployeeName,
    e.Salary,
    d.Location
FROM Employees e
INNER JOIN Departments d
ON e.DepartmentID = d.DepartmentID;

-- Q5
SELECT
    e.EmployeeName,
    p.ProjectName
FROM Employees e
INNER JOIN EmployeeProjects ep
ON e.EmployeeID = ep.EmployeeID
INNER JOIN Projects p
ON ep.ProjectID = p.ProjectID;


-- Basic LEFT JOIN

-- Q6
SELECT
    e.EmployeeName,
    d.DepartmentName
FROM Employees e
LEFT JOIN Departments d
ON e.DepartmentID = d.DepartmentID;

-- Q7
SELECT
    d.DepartmentName,
    e.EmployeeName
FROM Departments d
LEFT JOIN Employees e
ON d.DepartmentID = e.DepartmentID;

-- Q8
SELECT
    p.ProjectName,
    d.DepartmentName
FROM Projects p
LEFT JOIN Departments d
ON p.DepartmentID = d.DepartmentID;

-- Q9
SELECT
    e.EmployeeName,
    p.ProjectName
FROM Employees e
LEFT JOIN EmployeeProjects ep
ON e.EmployeeID = ep.EmployeeID
LEFT JOIN Projects p
ON ep.ProjectID = p.ProjectID;

-- Q10
SELECT
    e.EmployeeName,
    p.ProjectName
FROM Employees e
LEFT JOIN EmployeeProjects ep
ON e.EmployeeID = ep.EmployeeID
LEFT JOIN Projects p
ON ep.ProjectID = p.ProjectID
WHERE ep.ProjectID IS NULL;


-- Basic RIGHT JOIN

-- Q11
SELECT
    d.DepartmentName,
    e.EmployeeName
FROM Employees e
RIGHT JOIN Departments d
ON e.DepartmentID = d.DepartmentID;

-- Q12
SELECT
    p.ProjectName,
    e.EmployeeName
FROM EmployeeProjects ep
RIGHT JOIN Projects p
ON ep.ProjectID = p.ProjectID
LEFT JOIN Employees e
ON ep.EmployeeID = e.EmployeeID;

-- Q13
SELECT
    d.DepartmentName,
    e.EmployeeName
FROM Employees e
RIGHT JOIN Departments d
ON e.DepartmentID = d.DepartmentID;

-- Q14
SELECT
    p.ProjectName,
    d.DepartmentName
FROM Projects p
RIGHT JOIN Departments d
ON p.DepartmentID = d.DepartmentID;

-- Q15
SELECT
    p.ProjectName,
    e.EmployeeName
FROM EmployeeProjects ep
RIGHT JOIN Projects p
ON ep.ProjectID = p.ProjectID
LEFT JOIN Employees e
ON ep.EmployeeID = e.EmployeeID;


-- Basic FULL JOIN


-- Q16
SELECT
    e.EmployeeName,
    d.DepartmentName
FROM Employees e
FULL JOIN Departments d
ON e.DepartmentID = d.DepartmentID;

-- Q17
SELECT
    d.DepartmentName,
    p.ProjectName
FROM Departments d
FULL JOIN Projects p
ON d.DepartmentID = p.DepartmentID;

-- Q18
SELECT
    e.EmployeeName,
    p.ProjectName
FROM Employees e
FULL JOIN EmployeeProjects ep
ON e.EmployeeID = ep.EmployeeID
FULL JOIN Projects p
ON ep.ProjectID = p.ProjectID;

-- Q19
SELECT
    d.DepartmentName,
    e.EmployeeName
FROM Departments d
FULL JOIN Employees e
ON d.DepartmentID = e.DepartmentID;

-- Q20
SELECT
    d.DepartmentName,
    p.ProjectName
FROM Departments d
FULL JOIN Projects p
ON d.DepartmentID = p.DepartmentID;

---The error occurs because MySQL does not support FULL JOIN (or FULL OUTER JOIN). That's why every query from Q16–Q20 fails.
---Replace each FULL JOIN with a combination of LEFT JOIN and RIGHT JOIN using UNION.


-- Basic FULL JOIN (MySQL using UNION)

-- Q16
SELECT
    e.EmployeeName,
    d.DepartmentName
FROM Employees e
LEFT JOIN Departments d
ON e.DepartmentID = d.DepartmentID

UNION

SELECT
    e.EmployeeName,
    d.DepartmentName
FROM Employees e
RIGHT JOIN Departments d
ON e.DepartmentID = d.DepartmentID;


-- Q17
SELECT
    d.DepartmentName,
    p.ProjectName
FROM Departments d
LEFT JOIN Projects p
ON d.DepartmentID = p.DepartmentID

UNION

SELECT
    d.DepartmentName,
    p.ProjectName
FROM Departments d
RIGHT JOIN Projects p
ON d.DepartmentID = p.DepartmentID;


-- Q18
SELECT
    e.EmployeeName,
    p.ProjectName
FROM Employees e
LEFT JOIN EmployeeProjects ep
ON e.EmployeeID = ep.EmployeeID
LEFT JOIN Projects p
ON ep.ProjectID = p.ProjectID

UNION

SELECT
    e.EmployeeName,
    p.ProjectName
FROM Employees e
RIGHT JOIN EmployeeProjects ep
ON e.EmployeeID = ep.EmployeeID
RIGHT JOIN Projects p
ON ep.ProjectID = p.ProjectID;


-- Q19
SELECT
    d.DepartmentName,
    e.EmployeeName
FROM Departments d
LEFT JOIN Employees e
ON d.DepartmentID = e.DepartmentID

UNION

SELECT
    d.DepartmentName,
    e.EmployeeName
FROM Departments d
RIGHT JOIN Employees e
ON d.DepartmentID = e.DepartmentID;


-- Q20
SELECT
    d.DepartmentName,
    p.ProjectName
FROM Departments d
LEFT JOIN Projects p
ON d.DepartmentID = p.DepartmentID

UNION

SELECT
    d.DepartmentName,
    p.ProjectName
FROM Departments d
RIGHT JOIN Projects p
ON d.DepartmentID = p.DepartmentID;