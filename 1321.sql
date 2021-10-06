##LC 1321. Restaurant Growth

#Solution
WITH dates AS
   (SELECT DISTINCT visited_on
    FROM Customer
    WHERE DATEDIFF(visited_on, (SELECT MIN(visited_on) FROM Customer)) >= 6)

SELECT A.visited_on, SUM(B.amount) amount, ROUND(SUM(B.amount)/7, 2) average_amount
FROM dates A
LEFT JOIN Customer B
ON DATEDIFF(A.visited_on, B.visited_on) <= 6 AND DATEDIFF(A.visited_on, B.visited_on) >= 0
GROUP BY 1
                
#Result Runtime: 358 ms / 82.10%; Memory Usage: 0 MB / 100.00%

#Instruction: simple LEFT JOIN won't work here since there are multiple customers in one date
