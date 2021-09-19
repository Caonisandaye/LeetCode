##LC 183. Customers Who Never Order

#Solution
SELECT Name Customers
FROM Customers A
LEFT JOIN ORDERS B ON A.Id = B.CustomerID
WHERE B.Id IS NULL
                
#Result Runtime: 414 ms / 79.27%; Memory Usage: 0 MB / 100.00%

#Instruction: which JOIN?
