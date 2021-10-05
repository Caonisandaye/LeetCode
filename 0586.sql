##LC 586. Customer Placing the Largest Number of Orders

#Solution
SELECT customer_number
FROM Orders
GROUP BY 1
ORDER BY COUNT(*) DESC
LIMIT 1
                
#Result Runtime: 387 ms / 79.46%; Memory Usage: 0 MB / 100.00%

#Instruction: simple grouping, ordering and limiting
