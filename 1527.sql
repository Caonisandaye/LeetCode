##LC 1527. Patients With a Condition

#Solution
SELECT * FROM Patients
WHERE conditions LIKE "% DIAB1%" OR conditions LIKE "DIAB1%";
                
#Result Runtime: 271 ms / 82.77%; Memory Usage: 0 MB / 100.00%

#Instruction: not much to say, an application of LIKE
