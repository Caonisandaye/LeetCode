##LC 1378. Replace Employee ID With The Unique Identifier

#Solution
SELECT B.unique_id, A.name
FROM Employees A
LEFT JOIN EmployeeUNI B USING(id)
                
#Result Runtime: 890 ms / 85.08%; Memory Usage: 0 MB / 100.00%

#Instruction: simple LEFT JOIN
