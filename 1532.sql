##LC 1532. The Most Recent Three Orders

#Solution
SELECT name customer_name, customer_id, order_id, order_date
FROM (
    SELECT A.customer_id, name, order_id, order_date, RANK() OVER(PARTITION BY A.customer_id, name ORDER BY order_date DESC) rk
    FROM Orders A
    LEFT JOIN Customers USING(customer_id)
) A WHERE rk <= 3
ORDER BY 1, 2, 4 DESC
                
#Result Runtime: 736 ms / 96.73%; Memory Usage: 0 MB / 100.00%

#Instruction: simple usecase of RANK() function
