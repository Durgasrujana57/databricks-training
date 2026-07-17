# 📘 SQL JOIN Practice

## 📖 Project Overview

This project demonstrates different types of SQL JOIN operations using four related tables. It helps beginners understand how to combine data from multiple tables and retrieve meaningful information using SQL.

---

## 📂 Database Tables

### 🏢 Departments
- DepartmentID (Primary Key)
- DepartmentName
- Location

### 👨‍💼 Employees
- EmployeeID (Primary Key)
- EmployeeName
- DepartmentID
- Salary
- ManagerID
- JoiningDate

### 📋 Projects
- ProjectID (Primary Key)
- ProjectName
- DepartmentID
- Budget

### 🔗 EmployeeProjects
- EmployeeID
- ProjectID

---

## 📁 Project Structure

```
SQL-Joins-Practice/
│
├── schema.sql
├── queries.sql
├── output.md
└── README.md
```

---

## 🎯 Topics Covered

### 🔹 INNER JOIN
- Employee with Department
- Project with Department
- Employee with Project
- Salary with Department Location
- Employees working on projects

### 🔹 LEFT JOIN
- Employees with or without departments
- Departments with or without employees
- Projects with department names
- Employees with assigned projects
- Employees without projects

### 🔹 RIGHT JOIN
- Departments with employees
- Projects with employees
- Departments and employees
- Projects with departments
- Project assignments

### 🔹 FULL JOIN
- Employees and Departments
- Departments and Projects
- Employees and Projects
- Departments and Projects including unmatched records

---

## 📄 Files

- 📄 **schema.sql** → Database schema and sample data
- 📄 **queries.sql** → SQL JOIN queries (Q1–Q20)
- 📄 **output.md** → Outputs of all queries
- 📄 **README.md** → Project documentation

---

## 🧠 SQL Concepts Practiced

- ✅ INNER JOIN
- ✅ LEFT JOIN
- ✅ RIGHT JOIN
- ✅ FULL JOIN (using `LEFT JOIN + RIGHT JOIN + UNION`)
- ✅ One-to-Many Relationship
- ✅ Many-to-Many Relationship
- ✅ NULL Handling
- ✅ Foreign Keys

---

## 💻 Database

**MySQL 8.0**

> **📝 Note:** MySQL does not support `FULL JOIN` directly. This project implements FULL JOIN using `LEFT JOIN`, `RIGHT JOIN`, and `UNION`.

---

## 🎓 Learning Outcomes

After completing this project, you will be able to:

- ✔️ Create relational database tables
- ✔️ Insert sample data
- ✔️ Write INNER, LEFT, RIGHT, and FULL JOIN queries
- ✔️ Retrieve data from multiple related tables
- ✔️ Handle NULL values in JOIN operations
- ✔️ Understand table relationships

---

## 👩‍💻 Author

**Name:** CHINTAKULA DURGA SRUJANA

**Project:** SQL JOIN Practice

**Date:** 15-July-2026