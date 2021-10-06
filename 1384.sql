##LC 1384. Total Sales Amount by Year

#Solution
WITH RECURSIVE ppy AS (
    SELECT *, SUBSTRING(period_start, 1, 4) report_year
    FROM Sales
    UNION
    SELECT product_id, period_start, period_end, average_daily_sales, report_year+1
    FROM ppy
    WHERE report_year < SUBSTRING(period_end, 1, 4)
)

SELECT A.product_id, B.product_name, report_year, average_daily_sales * (DATEDIFF(
    CASE WHEN period_end < CONCAT(report_year, "-12-31") THEN period_end ELSE CONCAT(report_year, "-12-31") END,
     CASE WHEN period_start > CONCAT(report_year, "-01-01") THEN period_start ELSE CONCAT(report_year, "-01-01") END
    ) + 1) total_amount
FROM ppy A
LEFT JOIN Product B USING(product_id)
GROUP BY 1, 2, 3
ORDER BY 1, 3
                
#Result Runtime: 316 ms / 98.86%; Memory Usage: 0 MB / 100.00%

#Instruction: use RECURSIVE to get all the needed years and avoid non-overlap periods
