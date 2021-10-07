##LC 1549. The Most Recent Orders for Each Product

#Solution
SELECT product_name, A.product_id, order_id, order_date
FROM (
    SELECT product_name, A.product_id, order_id, order_date,
           RANK() OVER(PARTITION BY A.product_id ORDER BY order_date DESC) rk
    FROM Orders A LEFT JOIN Products USING(product_id)
) A WHERE rk = 1
ORDER BY 1, 2, 3
                
#Result Runtime: 1700 ms / 76.29%; Memory Usage: 0 MB / 100.00%

#Instruction: another usecase of RANK()
