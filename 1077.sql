##LC 1077. Project Employees III

#Solution
SELECT project_id, employee_id FROM
(
    SELECT project_id, A.employee_id,
           RANK() OVER(PARTITION BY project_id ORDER BY experience_years DESC) rk
    FROM Project A JOIN Employee B USING(employee_id)
) A
WHERE A.rk = 1
                
#Result Runtime: 499 ms / 72.29%; Memory Usage: 0 MB / 100.00%

#Instruction: most times for displaying the tie maxes, we use RANK()
