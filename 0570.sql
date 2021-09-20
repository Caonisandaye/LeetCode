##LC 570. Managers with at Least 5 Direct Reports

#Solution
SELECT A.Name FROM Employee A
JOIN Employee B ON A.Id = B.ManagerId
GROUP BY A.Id, A.Name
HAVING COUNT(*) >= 5
                
#Result Runtime: 263 ms / 69.18%; Memory Usage: 0 MB / 100.00%

#Instruction: don't be to dogmatism while using GROUP BY
