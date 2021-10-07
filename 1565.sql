##LC 1565. Unique Orders and Customers Per Month

#Solution
SELECT SUBSTRING(order_date, 1, 7) month, COUNT(DISTINCT order_id) order_count, COUNT(DISTINCT customer_id) customer_count
FROM Orders
WHERE invoice > 20
GROUP BY 1
                
#Result Runtime: 509 ms / 80.30%; Memory Usage: 0 MB / 100.00%

#Instruction: simply implement the logic with GROUP BY
