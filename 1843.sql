##LC 1843. Suspicious Bank Accounts

#Solution
WITH Exceed_month_income AS (
SELECT A.account_id, month FROM
(SELECT account_id, SUBSTRING(day, 1, 7) month, SUM(amount) income
FROM Transactions
WHERE type = "Creditor"
GROUP BY 1, 2) A
JOIN Accounts B
ON A.account_id = B.account_id AND A.income > B.max_income
)

SELECT DISTINCT A.account_id
FROM Exceed_month_income A
JOIN Exceed_month_income B
ON A.account_id = B.account_id AND TIMESTAMPDIFF(MONTH, CONCAT(A.month, "-01"),  CONCAT(B.month, "-01")) = 1
ORDER BY 1
                
#Result Runtime: 795 ms / 77.67%; Memory Usage: 0 MB / 100.00%

#Instruction: create Temp table with all exceeding (account, month) combination for future operation, use TIMESTAMPDIFF for time calculation
