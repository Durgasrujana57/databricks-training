# Phase 4: Business Pipeline & Analytics (PySpark ETL)

from pyspark.sql import SparkSession
from pyspark.sql.functions import col, sum as spark_sum, count, when, concat, lit, desc
from pyspark.sql.types import DoubleType, IntegerType

# Initialize Spark Session
spark = SparkSession.builder \
    .appName("Phase4_BusinessPipeline") \
    .getOrCreate()

print("PHASE 4: Business Pipeline & Analytics")

# Step 1: Data Loading & Cleaning

print("\nStep 1: Data Loading & Cleaning")

# Load the datasets
customers = spark.read.option("header", "true").option("inferSchema", "true").csv("/samples/customers.csv")
sales = spark.read.option("header", "true").option("inferSchema", "true").csv("/samples/sales.csv")

print(f"Original Customers: {customers.count()} rows")
print(f"Original Sales: {sales.count()} rows")

# Remove rows with null keys
customers_clean = customers.dropna(subset=["customer_id"])
sales_clean = sales.dropna(subset=["customer_id"])

# Remove duplicate rows
customers_clean = customers_clean.dropDuplicates(["customer_id"])
sales_clean = sales_clean.dropDuplicates(["sale_id"])

# Filter invalid values (negative amounts) and ensure correct type
sales_clean = sales_clean.withColumn("total_amount", col("total_amount").cast(DoubleType()))
sales_clean = sales_clean.filter(col("total_amount") > 0)

print(f"Cleaned Customers: {customers_clean.count()} rows")
print(f"Cleaned Sales: {sales_clean.count()} rows")

# Create full name column
customers_clean = customers_clean.withColumn(
    "customer_name",
    concat(col("first_name"), lit(" "), col("last_name"))
)

# Task 1: Daily Sales
print("\nTask 1: Daily Sales")
daily_sales = sales_clean.groupBy("sale_date") \
    .agg(spark_sum("total_amount").alias("total_sales")) \
    .orderBy("sale_date")
daily_sales.show(20, truncate=False)

# Task 2: City-wise Revenue
print("\nTask 2: City-wise Revenue")
city_revenue = customers_clean.join(sales_clean, "customer_id") \
    .groupBy("city") \
    .agg(spark_sum("total_amount").alias("total_revenue")) \
    .orderBy(desc("total_revenue"))
city_revenue.show(20, truncate=False)

# Task 3: Top 5 Customers
print("\nTask 3: Top 5 Customers")
top5_customers = customers_clean.join(sales_clean, "customer_id") \
    .groupBy("customer_id", "customer_name") \
    .agg(spark_sum("total_amount").alias("total_spend")) \
    .orderBy(desc("total_spend")) \
    .limit(5)
top5_customers.show(5, truncate=False)

# Task 4: Repeat Customers (>1 order)
print("\nTask 4: Repeat Customers (>1 order)")
repeat_customers = sales_clean.groupBy("customer_id") \
    .agg(count("*").alias("order_count")) \
    .filter(col("order_count") > 1) \
    .orderBy(desc("order_count"))
repeat_customers.show(20, truncate=False)

# Task 5: Customer Segmentation
print("\nTask 5: Customer Segmentation")
segmented_customers = customers_clean.join(sales_clean, "customer_id") \
    .groupBy("customer_id", "customer_name") \
    .agg(spark_sum("total_amount").alias("total_spend")) \
    .withColumn(
        "segment",
        when(col("total_spend") > 10000, "Gold")
        .when((col("total_spend") >= 5000) & (col("total_spend") <= 10000), "Silver")
        .otherwise("Bronze")
    ) \
    .orderBy(desc("total_spend"))
segmented_customers.show(20, truncate=False)

# Task 6: Final Reporting Table
print("\nTask 6: Final Reporting Table")
final_report = customers_clean.join(sales_clean, "customer_id") \
    .groupBy("customer_id", "customer_name", "city") \
    .agg(
        spark_sum("total_amount").alias("total_spend"),
        count("*").alias("order_count")
    ) \
    .withColumn(
        "segment",
        when(col("total_spend") > 10000, "Gold")
        .when((col("total_spend") >= 5000) & (col("total_spend") <= 10000), "Silver")
        .otherwise("Bronze")
    ) \
    .orderBy(desc("total_spend"))

print(f"Final Report: {final_report.count()} rows")
final_report.show(20, truncate=False)

# Task 7: Save Output (SKIPPED - Spark Playground doesn't allow saving)
print("\nTask 7: Save Output - SKIPPED (Spark Playground doesn't allow writing to disk)")
print("Note: In a real Databricks environment, use:")
print("  final_report.write.mode('overwrite').csv('/samples/output/report')")

# Reflection Questions
print("\nReflection Questions")

print("""
1. Why is cleaning done before joining tables?
   - To prevent incorrect joins due to null keys
   - To reduce data size and improve performance
   - To ensure data quality before analysis

2. What would go wrong if null keys are not removed?
   - Null keys will cause joins to fail or produce incorrect results
   - Nulls in join keys will not match with anything
   - Can lead to data loss or incorrect aggregations

3. How did you decide join order?
   - Start with the largest table or the one with the most complete data
   - Filter/clean smaller tables first to reduce join size
   - Customers and sales join is logical

4. Which step was most difficult and why?
   - Data cleaning (handling nulls, duplicates, invalid values)
   - Because real-world data is messy and unpredictable

5. How is SQL logic similar to PySpark?
   - Both use similar concepts: SELECT, JOIN, GROUP BY, WHERE
   - PySpark uses .select(), .join(), .groupBy(), .filter()
   - Both follow declarative logic for data manipulation

6. What challenges will appear with large data?
   - Memory issues if not using distributed processing
   - Longer processing time
   - Need for partitioning and optimization
   - Handling data skew

7. Can you explain the complete data pipeline flow?
   - Load data from source
   - Clean data (remove nulls, duplicates, invalid values)
   - Transform data (joins, aggregations, calculations)
   - Analyze data (business tasks)
   - Store results (save to tables or files)
""")

print("PHASE 4 COMPLETED SUCCESSFULLY!")