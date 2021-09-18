##LC 1875. Group Employees of the Same Salary

#Solution
SELECT A.*, B.team_id
FROM Employees A JOIN
(
    SELECT salary, RANK() OVER(ORDER BY salary) team_id
    FROM Employees
    GROUP BY 1
    HAVING COUNT(*) > 1
) B 
USING(salary)
ORDER BY 4, 1
                
#Result Runtime: 513 ms / 69.47%; Memory Usage: 0 MB / 100.00%

#Instruction: XXXXXX
