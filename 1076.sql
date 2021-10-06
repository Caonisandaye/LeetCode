##LC 1076. Project Employees II

#Solution
WITH Counts AS (
    SELECT project_id, COUNT(*) cnt
    FROM Project A
    LEFT JOIN Employee B USING(employee_id)
    GROUP BY 1
)

SELECT project_id FROM Counts
WHERE cnt = (SELECT MAX(cnt) FROM Counts)
                
#Result Runtime: 661 ms / 84.30%; Memory Usage: 0 MB / 100.00%

#Instruction: other way to organize the sub-query also works
