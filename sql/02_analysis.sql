-- 02_analysis.sql
-- KPI & exploration queries

-- 1) Sales by Region & Store Format
SELECT 
  STORE_REGION,
  STORE_FORMAT,
  SUM(SPEND) AS total_sales,
  COUNT(DISTINCT BASKET_ID) AS num_baskets
FROM fact_sales
GROUP BY STORE_REGION, STORE_FORMAT
ORDER BY total_sales DESC;

-- 2) Top 10 Products (by sales)
SELECT 
  PROD_CODE_20 AS department,
  PROD_CODE,
  SUM(QUANTITY) AS total_qty,
  SUM(SPEND) AS total_sales
FROM fact_sales
GROUP BY PROD_CODE_20, PROD_CODE
ORDER BY total_sales DESC
LIMIT 10;

-- 3) Basket Analysis
SELECT 
  ROUND(AVG(basket_qty), 2)   AS avg_items_per_basket,
  ROUND(AVG(basket_value), 2) AS avg_spend_per_basket
FROM basket_rollup;

-- 4) Hourly Sales
SELECT 
  SHOP_HOUR,
  COUNT(DISTINCT BASKET_ID) AS num_baskets,
  SUM(SPEND) AS total_sales
FROM fact_sales
GROUP BY SHOP_HOUR
ORDER BY total_sales DESC;

-- 5) RFM (Recency uses end_date = 2008-01-06)
WITH customer_orders AS (
  SELECT 
    CUST_CODE,
    MAX(SHOP_DATE_ISO) AS last_purchase,
    COUNT(DISTINCT BASKET_ID) AS frequency,
    SUM(SPEND) AS monetary
  FROM fact_sales
  GROUP BY CUST_CODE
)
SELECT 
  CUST_CODE,
  CAST(julianday('2008-01-06') - julianday(last_purchase) AS INTEGER) AS recency_days,
  frequency,
  monetary
FROM customer_orders
ORDER BY monetary DESC;
