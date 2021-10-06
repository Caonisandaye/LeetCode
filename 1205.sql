##LC 1205. Monthly Transactions II

#Solution
WITH M AS (
    SELECT SUBSTRING(trans_date, 1, 7) month, country FROM Transactions WHERE state = 'approved'
    UNION
    SELECT SUBSTRING(B.trans_date, 1, 7) month, country FROM Transactions A JOIN Chargebacks B ON A.id = B.trans_id
    GROUP BY 1, 2
),

APP AS (
    SELECT M.*, SUM(A.id IS NOT NULL) approved_count, COALESCE(SUM(amount), 0) approved_amount FROM M
    LEFT JOIN Transactions A 
    ON M.month = SUBSTRING(trans_date, 1, 7) AND M.country = A.country AND A.state = "approved"
    GROUP BY 1, 2
),

CHGB AS (
    SELECT M.*, SUM(A.trans_id IS NOT NULL) chargeback_count, COALESCE(SUM(amount), 0) chargeback_amount FROM Chargebacks A
    LEFT JOIN Transactions B
    ON A.trans_id = B.id
    RIGHT JOIN M
    ON M.month = SUBSTRING(A.trans_date, 1, 7) AND M.country = B.country
    GROUP BY 1, 2
)

SELECT * FROM CHGB JOIN APP USING(month, country)
                
#Result Runtime: 508 ms / 83.67%; Memory Usage: 0 MB / 100.00%

#Instruction: be very careful about the JOIN orders
