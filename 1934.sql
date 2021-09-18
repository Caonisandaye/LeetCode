##LC 1934. Confirmation Rate

#Solution
SELECT A.user_id,
    ROUND(COALESCE(SUM(action = "confirmed")/COUNT(*), 0), 2) confirmation_rate
FROM Signups A
LEFT JOIN Confirmations B
USING(user_id)
GROUP BY 1
                
#Result Runtime: 571 ms / 55.96%; Memory Usage: 0 MB / 100.00%

#Instruction: use round to handle the precision and coalesce to handle the nulls
