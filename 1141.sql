##LC 1141. User Activity for the Past 30 Days I

#Solution
SELECT activity_date day, COUNT(DISTINCT user_id) active_users
FROM Activity
WHERE DATEDIFF("2019-07-27", activity_date) < 30
GROUP BY 1
                
#Result Runtime: 344 ms / 97.27%; Memory Usage: 0 MB / 100.00%

#Instruction: simple grouping since we dont care 0 counts
