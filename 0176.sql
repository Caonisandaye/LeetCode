##LC 176. Second Highest Salary

#Solution
SELECT IFNULL(
(SELECT DISTINCT Salary  FROM
(SELECT Salary, DENSE_RANK() OVER (ORDER BY Salary DESC) rk
FROM Employee) A
WHERE rk = 2), NULL) SecondHighestSalary
                
#Result Runtime: 182 ms / 68.47%; Memory Usage: 0 MB / 100.00%

#Instruction: use DENSE_RANK() to query the rank we want, LIMIT + OFFSET might give a better solution, use IFNULL() to layout empty table as NULL
