##LC 1789. Primary Department for Each Employee

#Solution
SELECT employee_id, department_id
FROM Employee WHERE primary_flag = "Y"
UNION
SELECT employee_id, department_id 
FROM (
    SELECT employee_id, department_id, COUNT(*) OVER(PARTITION BY employee_id) cnt
    FROM Employee
) A WHERE cnt = 1
                
#Result Runtime: 412 ms / 88.64%; Memory Usage: 0 MB / 100.00%

#Instruction: RANK() outperforms group functions again
