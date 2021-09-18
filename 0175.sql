##LC 175. Combine Two Tables

#Solution: Write your MySQL query statement below

SELECT FirstName, LastName, City, State
FROM Person A
LEFT JOIN Address B
USING (PersonID)
                
#Result Runtime: 271 ms / 95.27%; Memory Usage: 0 MB / 100.00%

#Instruction: Simple join using USING()
