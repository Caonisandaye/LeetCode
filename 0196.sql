##LC 196. Delete Duplicate Emails

#Solution
WITH Temp AS (SELECT MIN(Id), Email FROM Person GROUP BY 2)

DELETE FROM Person
WHERE (Id, Email) NOT IN (SELECT * FROM TEMP)
                
#Result Runtime: 1498 ms / 86.11%; Memory Usage: 0 MB / 100.00%

#Instruction: can't UPDATE while querying from the same table, can use temp table or SELECT twice to avoid, can't use WHERE columns IN Temp
