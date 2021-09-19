##LC 197. Rising Temperature

#Solution
SELECT A.id
FROM Weather A
JOIN Weather B 
ON DATEDIFF(A.recordDate, B.recordDate) = 1 AND A.Temperature > B.Temperature

#Result Runtime: 488 ms / 34.19%; Memory Usage: 0 MB / 100.00%

#Instruction: DATEDIFF() and TIMESTAMPDIFF() are both date calculator in MySQL, note they are taking date parameters in different order
