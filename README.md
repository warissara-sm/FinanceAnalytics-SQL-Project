# 📊 Finance Analytics – SQL Project  

## 🔎 Overview
This project demonstrates **Finance Analytics using SQL**.  
It simulates a banking dataset containing **transactions, branches, and products**,  
then applies **data modeling (Star Schema)**, SQL-based **KPI analysis**,  
and prepares **BI-ready views** for visualization in **Power BI**.  

---

## 📂 Dataset Structure

### ⭐ Fact Table: `transactions`
- `TRANSACTION_DATE` – Transaction date  
- `TRANSACTION_HOUR` – Hour of transaction  
- `TRANSACTION_ID` – Unique transaction ID  
- `CUSTOMER_ID` – Customer identifier  
- `BRANCH` – Branch code  
- `PROD_CODE` – Product code  
- `UNITS` – Units sold / contracts signed  
- `AMOUNT` – Transaction amount (Revenue / Loan amount / Fees)  

### 🏦 Dimension: `branches`
- `BRANCH` – Branch code  
- `CHANNEL` – Distribution channel (e.g., Branch, Online)  
- `REGION` – Region of branch  

### 📦 Dimension: `products`
- `PROD_CODE` – Product code  
- `PRODUCT_DIV` – Product division  
- `PRODUCT_GROUP` – Product group  
- `PRODUCT_LINE` – Product line (e.g., Loan, Deposit, Insurance)  

---

## 🚀 How to Run
1. Import datasets (`transactions.csv`, `branches.csv`, `products.csv`) into **SQLite** / **MySQL**  
2. Run schema creation script → **`01_schema_and_cleaning.sql`**  
3. Execute analysis queries → **`02_analysis.sql`**  
4. Use BI-ready views → **`03_views_for_bi.sql`** and **`04_finance_layer.sql`**  
5. Connect the database to **Power BI / Tableau** to create dashboards  

---

## 🎯 Key Insights
- **Total revenue** per *Region / Branch / Channel*  
- **Product performance** across *Divisions / Groups / Lines*  
- **Customer segmentation** using *RFM Analysis*  
- **Peak business hours** for *branch/channel optimization*  

---

## 🛠 Tools
- **SQL** → SQLite  
- **Power BI** → Dashboard visualization  
- **GitHub** → Version control & portfolio showcase  
