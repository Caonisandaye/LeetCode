##LC 1543. Fix Product Name Format

#Solution
SELECT LOWER(TRIM(product_name)) product_name,
       SUBSTRING(sale_date, 1, 7) sale_date,
       COUNT(*) total
FROM Sales
GROUP BY 1, 2
ORDER BY 1, 2
                
#Result Runtime: 253 ms / 93.15%; Memory Usage: 0 MB / 100.00%

#Instruction: a simple usecase of TRIM() and LOWER()
