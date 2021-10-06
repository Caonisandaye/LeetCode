##LC 1075. Project Employees I

#Solution
SELECT project_id, ROUND(AVG(experience_years), 2) average_years
FROM Project A
LEFT JOIN Employee B USING(employee_id)
GROUP BY 1
                
#Result Runtime: 656 ms / 89.57%; Memory Usage: 0 MB / 100.00%

#Instruction: simple LEFT JOIN and GROUP BY
