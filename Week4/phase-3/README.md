# 🚀 Phase 3 – ETL Pipeline with SQL & PySpark

<div align="center">

![PySpark](https://img.shields.io/badge/PySpark-3.5.5-orange?style=for-the-badge&logo=apachespark)
![Python](https://img.shields.io/badge/Python-3.8+-blue?style=for-the-badge&logo=python)
![SQL](https://img.shields.io/badge/SQL-ANSI_SQL-green?style=for-the-badge&logo=mysql)
![Status](https://img.shields.io/badge/Status-Completed-success?style=for-the-badge)

**Building an End-to-End ETL Pipeline using SQL & PySpark**

</div>

---

# 📖 Overview

This project demonstrates the **ETL (Extract, Transform, Load)** process using **SQL** and **PySpark**. It focuses on loading raw customer and sales data, cleaning missing or invalid records, transforming data into meaningful insights, and generating business reports.

---

# 🛠️ Tech Stack

- 🐍 Python 3.8+
- ⚡ PySpark 3.5.5
- 🔥 Apache Spark
- 🗄️ SQL
- 📄 CSV Datasets

---

# 📂 Project Structure

```text
Week4/
└── phase-3/
    ├── etl_pipeline.py
    ├── queries.sql
    ├── README.md
    └── screenshots/
        ├── daily_sales.png
        ├── city_revenue.png
        ├── repeat_customers.png
        ├── highest_spenders.png
        └── final_report.png
```

---

# 📊 Dataset

### 👥 customers.csv

Contains customer information including:

- customer_id
- first_name
- last_name
- city

### 💰 sales.csv

Contains sales transaction details:

- sale_id
- customer_id
- sale_date
- total_amount

---

# 🧹 Data Preparation

The ETL pipeline performs the following preprocessing steps:

- Loaded CSV datasets
- Removed records with missing `customer_id`
- Converted `total_amount` to numeric format
- Filtered invalid sales records (`total_amount > 0`)
- Prepared data for analysis and reporting

---

# 📈 Tasks Implemented

| Task | Description |
|------|-------------|
| ✅ Task 1 | Calculate Daily Sales |
| ✅ Task 2 | Calculate City-wise Revenue |
| ✅ Task 3 | Identify Repeat Customers (>2 Orders) |
| ✅ Task 4 | Find Highest Spending Customer in Each City |
| ✅ Task 5 | Build Final Reporting Table |

---

# 🔄 SQL to PySpark Mapping

| SQL | PySpark |
|------|----------|
| SELECT | `select()` |
| WHERE | `filter()` |
| GROUP BY | `groupBy()` |
| SUM | `agg(sum())` |
| COUNT | `agg(count())` |
| JOIN | `join()` |
| ORDER BY | `orderBy()` |
| ROW_NUMBER() | `row_number().over()` |

---

# ⚙️ ETL Workflow

```text
CSV Files
     │
     ▼
Extract Data
     │
     ▼
Clean & Validate Data
     │
     ▼
Transform Data
     │
     ▼
Business Analysis
     │
     ▼
Generate Reports
```

---

# 📷 Output

Execution screenshots are available in the **screenshots/** directory.

- 📅 Daily Sales
- 🌆 City-wise Revenue
- 👥 Repeat Customers
- 🏆 Highest Spending Customer by City
- 📊 Final Reporting Table

---

# 🎯 Learning Outcomes

- ETL Pipeline Development
- Data Cleaning & Validation
- SQL to PySpark Translation
- Aggregations & Joins
- Window Functions
- Business Report Generation

---

# 🚀 Future Improvements

- Read data from MySQL/PostgreSQL using JDBC
- Store transformed data in Parquet format
- Automate ETL with Apache Airflow
- Visualize reports using Power BI or Tableau

---

# 👩‍💻 Author

**CHINTAKULA DURGA SRUJANA**

🎓 B.Tech – Computer Science Engineering

**Skills:** `Python` • `SQL` • `PySpark` • `Apache Spark` • `Data Engineering`

---

<div align="center">

⭐ **If you found this project useful, consider giving it a Star!**

**Happy Learning! 🚀**

</div>