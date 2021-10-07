##LC 1731. The Number of Employees Which Report to Each Employee

#Solution
SELECT A.employee_id, A.name, COUNT(*) reports_count, ROUND(AVG(B.age)) average_age
FROM Employees A
JOIN Employees B ON A.employee_id = B.reports_to
GROUP BY 1, 2
ORDER BY 1
                
#Result Runtime: 513 ms / 83.33%; Memory Usage: 0 MB / 100.00%

#Instruction: INNER JOIN is the right JOIN
