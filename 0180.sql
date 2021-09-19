##LC 180. Consecutive Numbers

#Solution
SELECT DISTINCT A.Num ConsecutiveNums
FROM Logs A
JOIN Logs B ON A.Id = B.Id + 1 AND A.Num = B.Num
JOIN Logs C ON B.Id = C.Id + 1 AND B.Num = C.Num
                
#Result Runtime: 408 ms / 75.00%; Memory Usage: 0 MB / 100.00%

#Instruction: implement the right logic
