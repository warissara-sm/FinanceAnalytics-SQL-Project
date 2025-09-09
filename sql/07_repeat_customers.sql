-- 07 Repeat customers (more than 1 transaction)
SELECT CUSTOMER_ID, COUNT(DISTINCT TRANSACTION_ID) AS txn_count,
       ROUND(SUM(AMOUNT),2) AS monetary
FROM fact_banking
GROUP BY CUSTOMER_ID
HAVING txn_count > 1
ORDER BY monetary DESC
LIMIT 20;
