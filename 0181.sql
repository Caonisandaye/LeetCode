##LC 181. Employees Earning More Than Their Managers

#Solution
SELECT A.Name Employee
FROM Employee A
JOIN Employee B ON A.ManagerId = B.Id AND A.Salary > B.Salary
                
#Result Runtime: 307 ms / 81.33%; Memory Usage: 0 MB / 100.00%

#Instruction: simple JOIN
