##LC 2020. Number of Accounts That Did Not Stream

#Solution
SELECT COUNT(DISTINCT A.account_id) accounts_count
FROM Subscriptions A
LEFT JOIN Streams B
ON A.account_id = B.account_id AND SUBSTRING(stream_date, 1, 4) = 2021
WHERE B.account_id IS NULL AND SUBSTRING(start_date, 1, 4) <= 2021 AND SUBSTRING(end_date, 1, 4) >= 2021
                
#Result Runtime: 661 ms / 96.90%; Memory Usage: 0 MB / 100.00%

#Instruction: YEAR() function is better than SUBSTRING()
