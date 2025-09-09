-- 08 RFM Analysis
WITH last_date AS (
  SELECT MAX(TXN_DATE) AS max_date FROM fact_banking
),
orders AS (
  SELECT CUSTOMER_ID,
         MAX(TXN_DATE) AS last_txn,
         COUNT(DISTINCT TRANSACTION_ID) AS frequency,
         SUM(AMOUNT) AS monetary
  FROM fact_banking
  GROUP BY CUSTOMER_ID
)
SELECT o.CUSTOMER_ID,
       CAST(julianday((SELECT max_date FROM last_date)) - julianday(o.last_txn) AS INTEGER) AS recency_days,
       o.frequency,
       ROUND(o.monetary,2) AS monetary
FROM orders o
ORDER BY monetary DESC
LIMIT 20;
