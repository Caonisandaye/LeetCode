##LC 1173. Immediate Food Delivery I

#Solution
SELECT ROUND(SUM(order_date = customer_pref_delivery_date)/COUNT(*)*100, 2) immediate_percentage
FROM Delivery
                
#Result Runtime: 358 ms / 93.67%; Memory Usage: 0 MB / 100.00%

#Instruction: simple group function
