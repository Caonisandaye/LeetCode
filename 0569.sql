##LC 569. Median Employee Salary

#Solution
SELECT Id, Company, Salary
FROM (
    SELECT *, 
        RANK() OVER(PARTITION BY Company ORDER BY Salary, Id) rk,
        SUM(1) OVER(PARTITION BY Company) cnt
    FROM Employee
) A
WHERE ABS(rk * 2 - cnt - 1) <= 1
                
#Result Runtime: 261 ms / 89.79%; Memory Usage: 0 MB / 100.00%

#Instruction: not very well defined question for the ties, variable might also handle this
