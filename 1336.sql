##LC 1336. Number of Transactions per Visit

#Solution
WITH RECURSIVE trans_count AS (
    SELECT A.user_id, visit_date, SUM(B.transaction_date IS NOT NULL) transactions_count
    FROM Visits A
    LEFT JOIN Transactions B
    ON A.user_id = B.user_id AND A.visit_date = B.transaction_date
    GROUP BY 1, 2
),

pos_count AS (
    SELECT 0 AS transactions_count
    UNION
    SELECT transactions_count + 1 FROM pos_count
    WHERE transactions_count + 1 <= (SELECT MAX(transactions_count) FROM trans_count)
)

SELECT A.transactions_count, SUM(B.user_id IS NOT NULL) visits_count
FROM pos_count A
LEFT JOIN trans_count B USING(transactions_count)
GROUP BY 1

                
#Result Runtime: 791 ms / 54.99%; Memory Usage: 0 MB / 100.00%

#Instruction: RECURSIVE temp table is very fragrant in 
