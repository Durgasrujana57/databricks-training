# 📊 Week 4 – Phase 2: SQL & PySpark Data Analysis

A mini data engineering project that performs customer and sales analysis using **SQL** and **PySpark**. The project demonstrates how common analytical queries can be implemented using both SQL and Spark DataFrame APIs.

---

## 📁 Project Structure

```
Week4/
└── phase-2/
    ├── screenshots/
    │   ├── average_order_amount.png
    │   ├── city_wise_total_revenue.png
    │   ├── customer_total_spend.png
    │   ├── customers_sorted_by_total_spend.png
    │   ├── customers_with_more_than_one_order.png
    │   ├── customers_with_no_orders.png
    │   └── top_3_customers.png
    ├── etl_pipeline.py
    ├── queries.sql
    └── README.md
```

---

## 🚀 Project Objectives

- Analyze customer purchase behavior.
- Perform aggregations using SQL and PySpark.
- Compare SQL queries with equivalent Spark DataFrame operations.
- Practice ETL and analytical transformations on structured datasets.

---

## 🛠️ Tech Stack

| Technology | Purpose |
|------------|---------|
| Python | Programming Language |
| Apache Spark (PySpark) | Distributed Data Processing |
| SQL | Data Analysis |
| CSV | Input Dataset |

---

## 📂 Dataset

### `customers.csv`

| Column |
|--------|
| customer_id |
| customer_name |
| city |

### `sales.csv`

| Column |
|--------|
| order_id |
| customer_id |
| total_amount |

---

## 📈 Analysis Performed

| Task | Description |
|------|-------------|
| 1 | Calculate total order amount for each customer |
| 2 | Find the top 3 customers by total spending |
| 3 | Identify customers with no orders |
| 4 | Calculate city-wise total revenue |
| 5 | Compute average order amount per customer |
| 6 | Find customers with more than one order |
| 7 | Sort customers by total spending |

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
Perform SQL/PySpark Analysis
        │
        ▼
Display Results
```

---

## ▶️ Running the Project

### Clone the Repository

```bash
git clone https://github.com/your-username/Week4.git
cd Week4/phase-2
```

### Run PySpark Script

```bash
spark-submit etl_pipeline.py
```

or

```bash
python etl_pipeline.py
```

*(If PySpark is configured locally.)*

---

## 📷 Output Screenshots

The `screenshots/` folder contains the outputs for all analytical tasks.

- Customer Total Spend
- Top 3 Customers
- Customers With No Orders
- City-wise Revenue
- Average Order Amount
- Customers With Multiple Orders
- Customers Sorted by Total Spend

---

## 🎯 Learning Outcomes

This project helped me gain hands-on experience with:

- SQL Aggregations
- GROUP BY & HAVING
- JOIN Operations
- Sorting & Ranking
- Spark DataFrame API
- ETL Pipeline Development
- Data Cleaning
- Analytical Reporting

---

## 👩‍💻 Author

**CHINTAKULA DURGA SRUJANA**

B.Tech – Computer Science Engineering

**Skills:** SQL • Python • PySpark • Apache Spark • Data Engineering