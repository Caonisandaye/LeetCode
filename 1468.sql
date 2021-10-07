##LC 1468. Calculate Salaries

#Solution
SELECT company_id, employee_id, employee_name,
       ROUND(salary * ((mxsalary<1000)*1 + (mxsalary>=1000 AND mxsalary <= 10000)*0.76 + (mxsalary>10000)*0.51)) salary
FROM (
    SELECT company_id, employee_id, employee_name, salary,
           MAX(salary) OVER(PARTITION BY company_id) mxsalary
    FROM Salaries
) A
                
#Result Runtime: 561 ms / 72.04%; Memory Usage: 0 MB / 100.00%

#Instruction: a temp table might be more concise in this case
