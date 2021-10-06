##LC 1270. All People Report to the Given Manager

#Solution
SELECT D.employee_id
FROM Employees A
JOIN Employees B ON A.employee_id = 1 AND A.employee_id = B.manager_id
JOIN Employees C ON B.employee_id = C.manager_id
JOIN Employees D ON C.employee_id = D.manager_id
WHERE D.employee_id <> 1
                
#Result Runtime: 187 ms / 93.32%; Memory Usage: 0 MB / 100.00%

#Instruction: note that the boss reports to himself
