##LC 615. Average Salary: Departments VS Company

#Solution
SELECT pay_month, department_id,
       CASE WHEN dep_avg > com_avg THEN "higher"
            WHEN dep_avg < com_avg THEN "lower"
            ELSE "same" END comparison
FROM
(
    SELECT SUBSTRING(pay_date, 1, 7) pay_month, department_id, 
        AVG(amount) OVER(PARTITION BY SUBSTRING(pay_date, 1, 7)) com_avg, 
        AVG(amount) OVER(PARTITION BY SUBSTRING(pay_date, 1, 7), department_id) dep_avg
    FROM salary A JOIN employee B USING(employee_id)
) A GROUP BY 1, 2
                
#Result Runtime: 287 ms / 72.69%; Memory Usage: 0 MB / 100.00%

#Instruction: window function AVG()
