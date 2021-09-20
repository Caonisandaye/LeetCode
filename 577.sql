##LC 577. Employee Bonus

#Solution
SELECT name, bonus
FROM Employee
LEFT JOIN Bonus USING(empId)
WHERE COALESCE(bonus, 0) < 1000
                
#Result Runtime: 255 ms / 64.49%; Memory Usage: 0 MB / 100.00%

#Instruction: COALESCE()
