##LC 1084. Sales Analysis III

#Solution
SELECT A.product_id, product_name
FROM Sales A
LEFT JOIN Product USING(product_id)
GROUP BY 1, 2
HAVING SUM(sale_date >= "2019-01-01" AND sale_date <= "2019-03-31") > 0
    AND SUM(sale_date < "2019-01-01" OR sale_date > "2019-03-31") = 0
                
#Result Runtime: 992 ms / 67.78%; Memory Usage: 0 MB / 100.00%

#Instruction: better than sub-queries
