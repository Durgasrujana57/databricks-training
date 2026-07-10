# 📊 Week 4 – Phase 2: SQL & PySpark Data Analysis

A mini data engineering project that performs customer and sales analysis using **SQL** and **PySpark**. The project demonstrates how common analytical queries can be implemented using both SQL and Spark DataFrame APIs for business reporting and customer analytics.

---

## 📁 Project Structure

```text
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

## 🎯 Project Objectives

- 📌 Analyze customer purchasing behavior using SQL and PySpark.
- 📊 Perform aggregations, joins, filtering, and sorting operations.
- 🔄 Compare SQL queries with equivalent PySpark DataFrame transformations.
- 🚀 Build a simple analytical pipeline for customer sales data.

---

## 🛠️ Tech Stack

| Technology | Purpose |
|------------|---------|
| 🐍 Python | Programming Language |
| ⚡ Apache Spark (PySpark) | Distributed Data Processing |
| 🗄️ SQL | Data Analysis |
| 📄 CSV | Input Dataset |

---

## 📂 Dataset

### 👥 `customers.csv`

| Column |
|--------|
| customer_id |
| first_name |
| last_name |
| city |

### 💰 `sales.csv`

| Column |
|--------|
| sale_id |
| customer_id |
| sale_date |
| total_amount |

---

## 📈 Analysis Performed

| ✅ Task | Description |
|---------|-------------|
| 1️⃣ | Calculate total order amount for each customer |
| 2️⃣ | Find the top 3 customers by total spending |
| 3️⃣ | Identify customers with no orders |
| 4️⃣ | Calculate city-wise total revenue |
| 5️⃣ | Compute average order amount per customer |
| 6️⃣ | Find customers with more than one order |
| 7️⃣ | Sort customers by total spending |

---

## 🔄 ETL Workflow

```text
📂 Load CSV Files
        │
        ▼
🧹 Clean Missing Values
        │
        ▼
🔢 Convert Data Types
        │
        ▼
📊 Perform SQL & PySpark Analysis
        │
        ▼
📈 Generate Business Insights
```

---

## ▶️ Running the Project

### 📥 Clone the Repository

```bash
git clone https://github.com/your-username/Week4.git
cd Week4/phase-2
```

### ▶️ Run the PySpark Script

```bash
spark-submit etl_pipeline.py
```

or

```bash
python etl_pipeline.py
```

> 💡 Ensure PySpark is installed and configured before running the project.

---

## 📷 Output Screenshots

The **screenshots/** folder contains outputs for all analytical tasks.

- 💵 Customer Total Spend
- 🏆 Top 3 Customers
- 🚫 Customers With No Orders
- 🌍 City-wise Total Revenue
- 📊 Average Order Amount
- 👥 Customers With Multiple Orders
- 📈 Customers Sorted by Total Spend

---

## 🎓 Learning Outcomes

This project helped me gain practical experience with:

- 📊 SQL Aggregations
- 🔗 GROUP BY & HAVING
- 🤝 JOIN Operations
- 📈 Sorting & Ranking
- ⚡ Spark DataFrame API
- 🔄 SQL to PySpark Translation
- 🧹 Data Cleaning & Type Casting
- 💼 Business Data Analysis

---

## 👩‍💻 Author

**CHINTAKULA DURGA SRUJANA**

🎓 B.Tech – Computer Science Engineering

**💡 Skills:** SQL • Python • PySpark • Apache Spark • Data Engineering
