-- 02 KPI Overview
SELECT
	ROUND(SUM(AMOUNT),2) AS total_revenue, -- Total revenue
	COUNT(DISTINCT CUSTOMER_ID) AS unique_customers, -- Unique customers
	COUNT(DISTINCT TRANSACTION_ID) AS total_transactions, -- Total transactions
	ROUND(SUM(AMOUNT)*1.0/COUNT(DISTINCT TRANSACTION_ID),2) AS avg_rev_per_txn -- Avg revenue per transaction
FROM fact_banking;
