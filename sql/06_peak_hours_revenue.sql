-- 06 Peak hours by revenue
SELECT TRANSACTION_HOUR,
       COUNT(DISTINCT TRANSACTION_ID) AS num_txn,
       ROUND(SUM(AMOUNT),2) AS total_revenue
FROM fact_banking
GROUP BY TRANSACTION_HOUR
ORDER BY total_revenue DESC;