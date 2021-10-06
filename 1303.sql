##LC 1303. Find the Team Size

#Solution
SELECT employee_id, COUNT(*) OVER(PARTITION BY team_id) team_size
FROM Employee
                
#Result Runtime: 212 ms / 97.09%; Memory Usage: 0 MB / 100.00%

#Instruction: simple window functions
