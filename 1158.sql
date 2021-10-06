##LC 1158. Market Analysis I

#Solution
SELECT A.user_id buyer_id, join_date, SUM(B.order_id IS NOT NULL) orders_in_2019
FROM Users A
LEFT JOIN Orders B
ON A.user_id = B.buyer_id AND SUBSTRING(B.order_date, 1, 4) = "2019"
GROUP BY 1, 2
                
#Result Runtime: 913 ms / 89.57%; Memory Usage: 0 MB / 100.00%

#Instruction: simple JOIN first and GROUP BY
