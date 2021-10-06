##LC 1350. Students With Invalid Departments

#Solution
SELECT A.id, A.name
FROM Students A
LEFT JOIN Departments B ON A.department_id = B.id
WHERE B.id IS NULL
                
#Result Runtime: 627 ms / 92.42%; Memory Usage: 0 MB / 100.00%

#Instruction: cant believe it's a medium level
