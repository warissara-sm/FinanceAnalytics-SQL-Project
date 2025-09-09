-- 04 Revenue & units by Product Line
SELECT PRODUCT_LINE,
       ROUND(SUM(AMOUNT),2) AS total_revenue,
       SUM(UNITS) AS total_units
FROM fact_banking
GROUP BY PRODUCT_LINE
ORDER BY total_revenue DESC;
