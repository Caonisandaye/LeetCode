##LC 1867. Orders With Maximum Quantity Above Average

#Solution
SELECT order_id
FROM OrdersDetails
GROUP BY 1
HAVING MAX(quantity) > 
    (SELECT MAX(avg_quantity) FROM 
        (SELECT order_id, AVG(quantity) avg_quantity FROM OrdersDetails GROUP BY 1) A)

                
#Result Runtime: 502 ms / 84.98%; Memory Usage: 0 MB / 100.00%

#Instruction: greater than all the averages means greater than the greatest average
