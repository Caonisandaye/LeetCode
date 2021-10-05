##LC 607. Sales Person

#Solution
SELECT name FROM salesperson
WHERE sales_id NOT IN
(
    SELECT sales_id FROM orders A 
    JOIN company B ON A.com_id = B.com_id AND B.name = "RED"
)
                
#Result Runtime: 1016 ms / 73.40%; Memory Usage: 0 MB / 100.00%

#Instruction: simple NOT IN plus sub-query
