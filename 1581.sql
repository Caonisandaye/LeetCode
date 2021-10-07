##LC 1581. Customer Who Visited but Did Not Make Any Transactions

#Solution
SELECT customer_id, COUNT(*) count_no_trans
FROM Visits A
LEFT JOIN Transactions B USING(visit_id)
WHERE B.visit_id IS NULL
GROUP BY 1
ORDER BY 2 DESC, 1
                
#Result Runtime: 998 ms / 76.45%; Memory Usage: 0 MB / 100.00%

#Instruction: simple logic, just use the correct JOIN and filtering
