##LC 511. Game Play Analysis I

#Solution
SELECT player_id, MIN(event_date) first_login
FROM Activity
GROUP BY 1
                
#Result Runtime: 472 ms / 70.41%; Memory Usage: 0 MB / 100.00%

#Instruction: simple GROUP BY
