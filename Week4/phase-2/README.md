Phase 2 – SQL & PySpark Data Analysis

<div align="center">

![PySpark](https://img.shields.io/badge/PySpark-3.5.5-orange?style=for-the-badge&logo=apachespark)
![Python](https://img.shields.io/badge/Python-3.8+-blue?style=for-the-badge&logo=python)
![SQL](https://img.shields.io/badge/SQL-ANSI_SQL-green?style=for-the-badge&logo=mysql)
![Status](https://img.shields.io/badge/Status-Completed-success?style=for-the-badge)

### 📊 Customer & Sales Analysis using SQL & PySpark

</div>

---

A mini data engineering project that performs customer and sales analysis using **SQL** and **PySpark**. The project demonstrates how common analytical queries can be implemented using both SQL and Spark DataFrame APIs to generate meaningful business insights.

---

## 🛠️ Tech Stack

| Technology | Purpose |
|------------|---------|
| 🐍 Python | Programming Language |
| ⚡ Apache Spark (PySpark) | Distributed Data Processing |
| 🗄️ SQL | Data Analysis |
| 📄 CSV | Input Dataset |

---

## 📁 Project Structure

```text
├── etl_pipeline.py          # PySpark implementation
├── queries.sql              # SQL queries
├── README.md                # Project documentation
└── screenshots/
    ├── average_order_amount.png
    ├── city_wise_total_revenue.png
    ├── customer_total_spend.png
    ├── customers_sorted_by_total_spend.png
    ├── customers_with_more_than_one_order.png
    ├── customers_with_no_orders.png
    └── top_3_customers.png
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

- 📊 Analyze customer purchasing behavior.
- 🔄 Compare SQL queries with equivalent PySpark DataFrame operations.
- 📈 Perform aggregations, joins, filtering, and sorting.
- ⚡ Practice ETL transformations using structured datasets.

---

## 📈 Analysis Performed

| Task | Description |
|------|-------------|
| ✅ Task 1 | Calculate total order amount for each customer |
<<<<<<< HEAD
| ✅ Task 2 | Find the Top 3 customers by total spending |
=======
| ✅ Task 2 | Find the top 3 customers by total spending |
>>>>>>> 9fa9767732ebe5bb81142f5a155e3b08bd841388
| ✅ Task 3 | Identify customers with no orders |
| ✅ Task 4 | Calculate city-wise total revenue |
| ✅ Task 5 | Compute average order amount per customer |
| ✅ Task 6 | Find customers with more than one order |
| ✅ Task 7 | Sort customers by total spending |

---

## 🔄 ETL Workflow

```text
Load CSV Files
        │
        ▼
Clean Missing Values
        │
        ▼
Convert Data Types
        │
        ▼
Perform SQL & PySpark Analysis
        │
        ▼
Generate Business Insights
```

---

## ▶️ Running the Project

### Clone the Repository

```bash
git clone https://github.com/your-username/Week4.git
```

<<<<<<< HEAD
### Navigate to the Project
=======
### Navigate to Phase 2
>>>>>>> 9fa9767732ebe5bb81142f5a155e3b08bd841388

```bash
cd phase-2
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

The `screenshots/` folder contains outputs for all analytical tasks.

- 💰 Customer Total Spend
- 🏆 Top 3 Customers by Total Spend
- 🚫 Customers With No Orders
- 🌆 City-wise Total Revenue
- 📊 Average Order Amount per Customer
- 👥 Customers With More Than One Order
- 📈 Customers Sorted by Total Spend

---

## 🎯 Learning Outcomes

Through this project, I gained hands-on experience with:

<<<<<<< HEAD
- 📌 SQL Aggregations
- 📌 GROUP BY & HAVING
- 📌 JOIN Operations
- 📌 Sorting & Ranking
- 📌 Spark DataFrame API
- 📌 SQL to PySpark Translation
- 📌 Data Cleaning & Type Casting
- 📌 ETL Pipeline Development
- 📌 Business Data Analysis
=======
- SQL Aggregations
- GROUP BY & HAVING
- JOIN Operations
- Sorting & Ranking
- Spark DataFrame API
- SQL to PySpark Translation
- Data Cleaning & Type Casting
- ETL Pipeline Development
- Business Data Analysis
>>>>>>> 9fa9767732ebe5bb81142f5a155e3b08bd841388

---

## 👩‍💻 Author

**CHINTAKULA DURGA SRUJANA**

🎓 B.Tech – Computer Science Engineering

**Skills:** SQL • Python • PySpark • Apache Spark • Data Engineering
