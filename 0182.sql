##LC 182. Duplicate Emails

#Solution
SELECT DISTINCT A.Email
FROM Person A
JOIN Person B ON A.Id > B.Id AND A.Email = B.Email
                
#Result Runtime: 291 ms / 80.40%; Memory Usage: 0 MB / 100.00%

#Instruction: we still need the DISTINCT in case there is a 3+ duplicate
