##LC 1113. Reported Posts

#Solution
SELECT extra report_reason, COUNT(DISTINCT post_id) report_count
FROM Actions
WHERE action = "report" AND DATEDIFF("2019-07-05", action_date) = 1
GROUP BY 1
                
#Result Runtime: 472 ms / 85.33%; Memory Usage: 0 MB / 100.00%

#Instruction: not caring about 0 counts makes things simple
