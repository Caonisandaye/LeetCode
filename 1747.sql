
##LC 1747. Leetflex Banned Accounts

#Solution
SELECT DISTINCT A.account_id
FROM LogInfo A
JOIN LogInfo B
ON A.account_id = B.account_id AND A.ip_address <> B.ip_address 
    AND (A.login <= B.login AND A.logout >= B.login)
                
#Result Runtime: 481 ms / 87.62%; Memory Usage: 0 MB / 100.00%

#Instruction: notice the logic reflected in join clause, how to interpret the overlap login
