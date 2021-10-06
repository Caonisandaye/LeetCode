##LC 1174. Immediate Food Delivery II

#Solution
SELECT ROUND(SUM(order_date = customer_pref_delivery_date)/COUNT(*)*100, 2) immediate_percentage 
FROM (
    SELECT order_date, customer_pref_delivery_date, RANK() OVER(PARTITION BY customer_id ORDER BY order_date) rk
    FROM Delivery
) A
WHERE rk = 1
                
#Result Runtime: 486 ms / 95.06%; Memory Usage: 0 MB / 100.00%

#Instruction: RANK() function works again
