##LC 1369. Get the Second Most Recent Activity

#Solution
SELECT username, activity, startDate, endDate FROM (
    SELECT *,
           RANK() OVER(PARTITION BY username ORDER BY startDate DESC) rk,
           COUNT(*) OVER(PARTITION BY username) cnt
    FROM UserActivity
) A WHERE rk = 2 OR cnt = 1
                
#Result Runtime: 312 ms / 71.30%; Memory Usage: 0 MB / 100.00%

#Instruction: simple implementation of window function RANK() and COUNT()
