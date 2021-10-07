##LC 1831. Maximum Transaction Each Day

#Solution
SELECT transaction_id
FROM(
    SELECT transaction_id, RANK() OVER(PARTITION BY DAY(day) ORDER BY amount DESC) rk 
    FROM Transactions
) A WHERE rk = 1
ORDER BY 1
                
#Result Runtime: 459 ms / 76.83%; Memory Usage: 0 MB / 100.00%

#Instruction: RANK() again
