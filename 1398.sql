##LC 1398. Customers Who Bought Products A and B but Not C

#Solution
SELECT * FROM Customers
WHERE 
    customer_id NOT IN (SELECT customer_id FROM Orders WHERE product_name = "C")
    AND customer_id IN (SELECT customer_id FROM Orders WHERE product_name = "A")
    AND customer_id IN (SELECT customer_id FROM Orders WHERE product_name = "B")
                
#Result Runtime: 468 ms / 94.14%; Memory Usage: 0 MB / 100.00%

#Instruction: simple filtering with a sub-query
