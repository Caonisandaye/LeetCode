##LC 177. Nth Highest Salary

#Solution
CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
    SET N = N -1 ;
  RETURN (
      # Write your MySQL query statement below.
        SELECT DISTINCT salary FROM Employee ORDER BY 1 DESC LIMIT 1 OFFSET N
  );
END
                
#Result Runtime: 302 ms / 68.78%; Memory Usage: 0 MB / 100.00%

#Instruction: don't know why OFFSET N-1 not working, DENSE_RANK() also works while a little bit complex
