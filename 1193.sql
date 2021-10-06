##LC 1193. Monthly Transactions I

#Solution
SELECT SUBSTRING(trans_date, 1, 7) month, country, 
       COUNT(*) trans_count, 
       SUM(state = "approved") approved_count,
       SUM(amount) trans_total_amount, 
       SUM((state = "approved")*amount) approved_total_amount
FROM Transactions
GROUP BY 1, 2
                
#Result Runtime: 504 ms / 90.24%; Memory Usage: 0 MB / 100.00%

#Instruction: luckily we only care about month, country combination appearing in this table
