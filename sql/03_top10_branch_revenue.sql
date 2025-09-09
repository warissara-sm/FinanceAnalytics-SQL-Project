-- 03 Top 10 branches by revenue
SELECT
	REGION, 
    CHANNEL, 
    BRANCH,
    ROUND(SUM(AMOUNT),2) AS total_revenue, 
	SUM(UNITS) AS total_units,
	COUNT(DISTINCT CUSTOMER_ID) AS unique_customers
FROM fact_banking
GROUP BY REGION, CHANNEL, BRANCH
ORDER BY total_revenue DESC
LIMIT 10;

