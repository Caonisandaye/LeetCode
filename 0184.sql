##LC 184. Department Highest Salary

#Solution
SELECT Department, Employee, Salary FROM
(
    SELECT A.Name Department, B.Name Employee, Salary, RANK() OVER(PARTITION BY A.Id ORDER BY Salary DESC) rk 
    FROM Department A 
    JOIN Employee B ON A.Id = B.DepartmentId
) A
WHERE rk = 1
                
#Result Runtime: 593 ms / 51.21%; Memory Usage: 0 MB / 100.00%

#Instruction: RANK() is so fragrant
