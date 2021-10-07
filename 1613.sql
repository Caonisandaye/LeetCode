##LC 1613. Find the Missing IDs

#Solution
WITH RECURSIVE Ids AS (
    SELECT 1 ids
    UNION
    SELECT ids + 1 FROM Ids
    WHERE ids < (SELECT (MAX(customer_id)) FROM Customers)
)

SELECT ids
FROM Ids A
LEFT JOIN Customers B
ON A.ids = B.customer_id
WHERE B.customer_id IS NULL
                
#Result Runtime: 299 ms / 99.25%; Memory Usage: 0 MB / 100.00%

#Instruction: another good example of RECURSIVE table
