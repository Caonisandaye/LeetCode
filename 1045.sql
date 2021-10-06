##LC 1045. Customers Who Bought All Products

#Solution
SELECT customer_id
FROM Customer
GROUP BY 1
HAVING COUNT(DISTINCT product_key) = (SELECT COUNT(DISTINCT product_key) FROM Product)
                
#Result Runtime: 424 ms / 94.39%; Memory Usage: 0 MB / 100.00%

#Instruction: simple HAVING with sub-queries
