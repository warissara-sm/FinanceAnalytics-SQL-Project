# 📊 Finance Analytics – SQL Project  

## 🔎 Overview
This project demonstrates **Finance Analytics using SQL**.  
It simulates a banking dataset containing **transactions, branches, and products**,  
then applies **data modeling (Star Schema)** and SQL-based **KPI/insight analysis**.  
All queries are organized step-by-step (01 → 08) in the [`sql/`](sql/) folder.  

---

## 📂 Dataset
Stored in the [`data/`](data/) folder:
- **transactions.csv** → Transaction fact table  
- **branch.csv** → Branch dimension  
- **products.csv** → Product dimension  

---

## 📂 SQL Workflow
All scripts are stored in [`sql/`](sql/):

1. **01_create_fact_banking.sql** → Build the `fact_banking` view (join transactions + branch + products)  
2. **02_kpi_overview.sql** → Generate KPIs (total revenue, customers, transactions, avg revenue/txn)  
3. **03_top10_branch_revenue.sql** → Top 10 branches by revenue  
4. **04_productline_revenue_units.sql** → Product line performance (revenue & units)  
5. **05_monthly_revenue.sql** → Monthly revenue trend  
6. **06_peak_hours_revenue.sql** → Peak hours with highest revenue  
7. **07_repeat_customers.sql** → Identify repeat customers (txn > 1)  
8. **08_rfm_analysis.sql** → RFM-lite analysis (Recency, Frequency, Monetary)  

---

## 🚀 How to Run
1. Import datasets (`transactions.csv`, `branch.csv`, `products.csv`) into **SQLite**  
2. Run `01_create_fact_banking.sql` to create the fact view  
3. Execute subsequent scripts (`02` → `08`) to generate KPIs and insights  
4. (Optional) Export results or connect to **Power BI / Tableau** for dashboards  

---

## 🎯 Key Insights
- **KPI Overview** → Total revenue, unique customers, total transactions, avg revenue/txn  
- **Branch Performance** → Top 10 branches, revenue by region/channel  
- **Product Portfolio** → Revenue & units by product line  
- **Time Trends** → Monthly revenue and peak transaction hours  
- **Customer Analytics** → Repeat customers and RFM-lite segmentation  

---

## 🛠 Tools
- **SQL** → SQLite  
- **Excel** → Pre-cleaning CSVs  
- **Power BI (optional)** → Dashboard visualization  
- **GitHub** → Version control & portfolio showcase  
