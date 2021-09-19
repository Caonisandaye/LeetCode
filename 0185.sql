##LC 185. Department Top Three Salaries

#Solution
SELECT B.Name Department, Employee, Salary FROM
(
    SELECT DepartmentID, Name Employee, Salary, DENSE_RANK() OVER(PARTITION BY DepartmentID ORDER BY Salary DESC) rk 
    FROM Employee
) A
LEFT JOIN Department B ON A.DepartmentID = B.Id
WHERE A.rk <= 3
                
#Result Runtime: 603 ms / 83.83%; Memory Usage: 0 MB / 100.00%

#Instruction: DENSE_RANK(), DENSE_RANK(), DENSE_RANK
