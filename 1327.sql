##LC 1327. List the Products Ordered in a Period

#Solution
SELECT B.product_name, SUM(unit) unit
FROM Orders A
LEFT JOIN Products B USING(product_id)
WHERE SUBSTRING(order_date, 1, 7) = "2020-02"
GROUP BY A.product_id, 1
HAVING SUM(unit) >= 100
                
#Result Runtime: 464 ms / 92.16%; Memory Usage: 0 MB / 100.00%

#Instruction: simple LEFT JOIN and GROUP BY, and no need to care about NULLs
