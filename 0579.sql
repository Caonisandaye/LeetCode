##LC 579. Find Cumulative Salary of an Employee

#Solution
SELECT A.Id, A.Month, A.Salary + COALESCE(B.Salary, 0) + COALESCE(C.Salary, 0) Salary
FROM Employee A
LEFT JOIN Employee B ON A.Id = B.Id AND A.Month - B.Month = 1
LEFT JOIN Employee C ON A.Id = C.Id AND A.Month - C.Month = 2
WHERE (A.Id, A.Month) NOT IN (SELECT Id, MAX(Month) FROM Employee GROUP BY 1)
ORDER BY 1, 2 DESC
                
#Result Runtime: 346 ms / 67.67%; Memory Usage: 0 MB / 100.00%

#Instruction: implement the logic by JOIN
