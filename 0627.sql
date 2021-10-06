##LC 627. Swap Salary

#Solution
UPDATE Salary
SET sex = (
    CASE WHEN sex = "f" THEN "m"
         WHEN sex = "m" THEN "f" END
    )
                
#Result Runtime: 191 ms / 99.29%; Memory Usage: 0 MB / 100.00%

#Instruction: CASE sex WHEN "..." is equivalent with CASE WHEN sex = "..."
