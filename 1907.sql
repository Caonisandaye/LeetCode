
##LC 1907. Count Salary Categories

#Solution
SELECT "Low Salary" category, SUM(income < 20000) accounts_count FROM Accounts
UNION
SELECT "Average Salary" category, SUM(income >= 20000 and income <= 50000) accounts_count FROM Accounts
UNION
SELECT "High Salary" category, SUM(income > 50000) accounts_count FROM Accounts
                
#Result Runtime: 1547 ms / 89.91%; Memory Usage: 0 MB / 100.00%

#Instruction: be careful by categories not appearing when using GROUP BY, use UNION instead to avoid this
