##LC 1378. Replace Employee ID With The Unique Identifier

#Solution
SELECT B.unique_id, A.name
FROM Employees A
LEFT JOIN EmployeeUNI B USING(id)
                
#Result Runtime: 887 ms / 85.92%; Memory Usage: 0 MB / 100.00%

#Instruction: simple LEFT JOIN
