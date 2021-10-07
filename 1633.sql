##LC 1633. Percentage of Users Attended a Contest

#Solution
SELECT contest_id, ROUND(100*COUNT(*)/(SELECT COUNT(*) FROM Users), 2) percentage
FROM Register
GROUP BY 1
ORDER BY 2 DESC, 1
                
#Result Runtime: 823 ms / 82.05%; Memory Usage: 0 MB / 100.00%

#Instruction: simply implement the logic
