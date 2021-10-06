##LC 1068. Product Sales Analysis I

#Solution
SELECT B.product_name, year, price
FROM Sales A
LEFT JOIN Product B USING(product_id)
                
#Result Runtime: 1036 ms / 97.24%; Memory Usage: 0 MB / 100.00%

#Instruction: simple LEFT JOIN
