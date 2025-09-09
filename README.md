📊 Finance Analytics – SQL Project
🔎 Overview

This project demonstrates Finance Analytics using SQL.
It simulates a banking dataset containing transactions, branches, and products, then applies data modeling (Star Schema), SQL-based KPI analysis, and prepares BI-ready views for visualization in Power BI or Tableau.

📂 Dataset Structure
⭐ Fact Table: transactions

TRANSACTION_DATE – Transaction date

TRANSACTION_HOUR – Hour of transaction

TRANSACTION_ID – Unique transaction ID

CUSTOMER_ID – Customer identifier

BRANCH – Branch code

PROD_CODE – Product code

UNITS – Units sold / contracts signed

AMOUNT – Transaction amount (Revenue / Loan amount / Fees)

🏦 Dimension: branches

BRANCH – Branch code

CHANNEL – Distribution channel (e.g., Physical branch, Online)

REGION – Region of branch

📦 Dimension: products

PROD_CODE – Product code

PRODUCT_DIV – Division of products

PRODUCT_GROUP – Product group

PRODUCT_LINE – Product line (e.g., Loan, Deposit, Insurance)

🏗️ Data Model (Star Schema)
         +-----------+       +-----------+
         |  branches |       |  products |
         |-----------|       |-----------|
         | BRANCH    |       | PROD_CODE |
         | CHANNEL   |       | DIV/GROUP |
         | REGION    |       | LINE      |
         +-----+-----+       +-----+-----+
               \               /
                \             /
                 +-----------+
                 |transactions|
                 |-----------|
                 | DATE,HOUR |
                 | CUSTOMER  |
                 | BRANCH    |
                 | PROD_CODE |
                 | UNITS     |
                 | AMOUNT    |
                 +-----------+

📊 Example Analytics (SQL)
1. Branch Revenue
SELECT REGION, CHANNEL, BRANCH,
       SUM(AMOUNT) AS total_revenue,
       SUM(UNITS)  AS total_units
FROM transactions t
JOIN branches b ON t.BRANCH = b.BRANCH
GROUP BY REGION, CHANNEL, BRANCH
ORDER BY total_revenue DESC;

2. Product Portfolio
SELECT PRODUCT_LINE, PRODUCT_GROUP,
       SUM(AMOUNT) AS total_revenue,
       SUM(UNITS)  AS total_units
FROM transactions t
JOIN products p ON t.PROD_CODE = p.PROD_CODE
GROUP BY PRODUCT_LINE, PRODUCT_GROUP
ORDER BY total_revenue DESC;

3. Customer RFM
WITH customer_orders AS (
    SELECT CUSTOMER_ID,
           MAX(TRANSACTION_DATE) AS last_txn,
           COUNT(DISTINCT TRANSACTION_ID) AS frequency,
           SUM(AMOUNT) AS monetary
    FROM transactions
    GROUP BY CUSTOMER_ID
)
SELECT CUSTOMER_ID,
       julianday('2008-01-01') - julianday(last_txn) AS recency_days,
       frequency, monetary
FROM customer_orders
ORDER BY monetary DESC;

🚀 How to Run

Import datasets (transactions.csv, branches.csv, products.csv) into SQLite / MySQL

Execute schema creation script (01_schema_and_cleaning.sql)

Run KPI queries from (02_analysis.sql)

Explore BI-ready views from (03_views_for_bi.sql and 04_finance_layer.sql)

Connect to Power BI or Tableau for dashboard building

🎯 Key Insights

Revenue per Region / Branch / Channel

Product performance across Divisions / Groups / Lines

RFM segmentation for customer analysis

Identification of Peak Hours for transaction activity

🛠 Tools

SQL (SQLite / MySQL)

Power BI (Dashboard visualization)

GitHub (Version control & portfolio)
