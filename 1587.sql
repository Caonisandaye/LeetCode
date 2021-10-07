##LC 1587. Bank Account Summary II

#Solution
SELECT A.name, SUM(amount) balance
FROM Users A
LEFT JOIN Transactions B USING(account)
GROUP BY A.account, 1
HAVING balance > 10000
                
#Result Runtime: 599 ms / 60.55%; Memory Usage: 0 MB / 100.00%

#Instruction: no need to COALESCE since already have the filter > 10000
