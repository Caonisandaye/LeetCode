##LC 1069. Product Sales Analysis II

#Solution
SELECT SELECT product_id, SUM(quantity) total_quantity
FROM Sales
GROUP BY 1
                
#Result Runtime: 964 ms / 80.44%; Memory Usage: 0 MB / 100.00%

#Instruction: simple GROUP BY
