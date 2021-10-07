##LC 1555. Bank Account Summary

#Solution
SELECT user_id, user_name, credit + IFNULL(plus, 0) - IFNULL(less, 0) credit,
       CASE WHEN credit + IFNULL(plus, 0) - IFNULL(less, 0) < 0 THEN "Yes" ELSE "No" END credit_limit_breached
FROM Users A
LEFT JOIN (SELECT paid_by, SUM(amount) less FROM Transactions GROUP BY 1) B ON A.user_id = B.paid_by
LEFT JOIN (SELECT paid_to, SUM(amount) plus FROM Transactions GROUP BY 1) C ON A.user_id = C.paid_to
GROUP BY 1, 2
                
#Result Runtime: 532 ms / 74.54%; Memory Usage: 0 MB / 100.00%

#Instruction: remember to GROUP BY before JOIN to avoid duplicate lines
