##LC 1667. Fix Names in a Table

#Solution
SELECT user_id, CONCAT(UPPER(SUBSTRING(name, 1, 1)), LOWER(SUBSTRING(name, 2))) name
FROM Users
ORDER BY 1
                
#Result Runtime: 518 ms / 89.81%; Memory Usage: 0 MB / 100.00%

#Instruction: flexibly using UPPER() and LOWER()
