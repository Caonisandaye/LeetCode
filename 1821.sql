##LC 1821. Find Customers With Positive Revenue this Year

#Solution
SELECT customer_id
FROM Customers
WHERE year = 2021 AND revenue > 0
                
#Result Runtime: 601 ms / 68.43%; Memory Usage: 0 MB / 100.00%

#Instruction: simple filtering
