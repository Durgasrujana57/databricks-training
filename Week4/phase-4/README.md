# 🚀 Phase 4 – Business Pipeline & Analytics

<div align="center">

![PySpark](https://img.shields.io/badge/PySpark-3.5.5-orange?style=for-the-badge&logo=apachespark)
![Python](https://img.shields.io/badge/Python-3.8+-blue?style=for-the-badge&logo=python)
![SQL](https://img.shields.io/badge/SQL-ANSI_SQL-green?style=for-the-badge&logo=mysql)
![Status](https://img.shields.io/badge/Status-Completed-success?style=for-the-badge)

### 📊 End-to-End Business Pipeline using SQL & PySpark

</div>

---

A mini data engineering project that builds a complete **ETL (Extract, Transform, Load) pipeline** using **SQL** and **PySpark**. The project focuses on data cleaning, business analytics, customer segmentation, and reporting using Spark DataFrames and SQL queries.

---

## 🛠️ Tech Stack

| Technology | Purpose |
|------------|---------|
| 🐍 Python | Programming Language |
| ⚡ Apache Spark (PySpark) | Distributed Data Processing |
| 🗄️ SQL | Business Queries |
| 📄 CSV | Input Dataset |

---

## 📁 Project Structure

```text
├── etl_pipeline.py          # PySpark ETL pipeline
├── queries.sql              # SQL implementation
├── README.md                # Project documentation
└── screenshots/
    ├── daily_sales.png
    ├── city_revenue.png
    ├── top5_customers.png
    ├── repeat_customers.png
    ├── segmented_customers.png
    ├── final_report.png
    └── reflection_notes.png
```

---

## 📂 Dataset

### 👥 `customers.csv`

Contains customer information.

| Column |
|--------|
| customer_id |
| first_name |
| last_name |
| email |
| city |
| state |

### 💰 `sales.csv`

Contains sales transaction details.

| Column |
|--------|
| sale_id |
| customer_id |
| product_id |
| sale_date |
| quantity |
| total_amount |

---

## 🎯 Project Objectives

- 🧹 Clean and validate raw datasets.
- 🔄 Build an end-to-end ETL pipeline.
- 📊 Generate business insights using SQL and PySpark.
- 🤝 Perform joins, aggregations, and transformations.
- 🥇 Segment customers based on spending.
- 📋 Create a final reporting table for business analysis.

---

## 📈 Pipeline Tasks

| Task | Description |
|------|-------------|
| ✅ Task 1 | Calculate daily sales |
| ✅ Task 2 | Calculate city-wise revenue |
| ✅ Task 3 | Find the top 5 customers by total spending |
| ✅ Task 4 | Identify repeat customers (>1 order) |
| ✅ Task 5 | Segment customers into Gold, Silver, and Bronze |
| ✅ Task 6 | Generate the final reporting table |
| ✅ Task 7 | Prepare pipeline for saving output |

---

## 🧹 Data Cleaning

Before performing analytics, the following preprocessing steps were completed:

- ✅ Removed records with null `customer_id`
- ✅ Removed duplicate customer and sales records
- ✅ Converted `total_amount` to numeric type
- ✅ Filtered invalid sales values
- ✅ Created customer full name
- ✅ Prepared datasets for joins and reporting

---

## 🔄 ETL Workflow

```text
Load CSV Files
        │
        ▼
Clean & Validate Data
        │
        ▼
Remove Duplicates
        │
        ▼
Join Customer & Sales Data
        │
        ▼
Business Analysis
        │
        ▼
Customer Segmentation
        │
        ▼
Generate Final Report
```

---

## 🔄 SQL to PySpark Mapping

| SQL | PySpark |
|------|----------|
| SELECT | select() |
| WHERE | filter() |
| GROUP BY | groupBy() |
| SUM | agg(sum()) |
| COUNT | agg(count()) |
| JOIN | join() |
| CASE WHEN | when() |
| ORDER BY | orderBy() |

---

## ▶️ Running the Project

### Clone the Repository

```bash
git clone https://github.com/your-username/Week4.git
```

### Navigate to Phase 4

```bash
cd phase-4
```

### Run the PySpark Script

```bash
spark-submit etl_pipeline.py
```

or

```bash
python etl_pipeline.py
```

> **Note:** Ensure **PySpark** is installed and configured before running the project.

---

## 📷 Output Screenshots

The `screenshots/` folder contains outputs for every pipeline task.

- 📅 Daily Sales
- 🌆 City-wise Revenue
- 🏆 Top 5 Customers
- 👥 Repeat Customers
- 🥇 Customer Segmentation
- 📋 Final Reporting Table
- 📝 Reflection Notes

---

## 🎯 Learning Outcomes

Through this project, I gained hands-on experience with:

- 🧹 Data Cleaning & Validation
- 🔄 ETL Pipeline Development
- 🤝 JOIN Operations
- 📊 SQL Aggregations
- ⚡ Spark DataFrame API
- 🥇 Customer Segmentation
- 📈 SQL to PySpark Translation
- 📋 Business Reporting
- 💼 Business Analytics

---

## 🚀 Future Improvements

- Connect to MySQL/PostgreSQL using JDBC
- Store processed data in Parquet format
- Automate ETL pipelines using Apache Airflow
- Deploy Spark jobs on Databricks
- Build dashboards using Power BI or Tableau

---

## 👩‍💻 Author

**CHINTAKULA DURGA SRUJANA**

🎓 B.Tech – Computer Science Engineering

**Skills:** SQL • Python • PySpark • Apache Spark • Data Engineering