##LC 601. Human Traffic of Stadium

#Solution
WITH Temp AS(
    SELECT A.id FROM Stadium A
    JOIN Stadium B ON A.id = B.id - 1 AND A.people >= 100 AND B.people >= 100
    JOIN Stadium C ON A.id = C.id - 2 AND C.people >= 100
)

SELECT * FROM Stadium
WHERE id IN (SELECT id FROM Temp) OR id-1 IN (SELECT id FROM Temp) OR id-2 IN (SELECT id FROM Temp)
                
#Result Runtime: 259 ms / 96.18%; Memory Usage: 0 MB / 100.00%

#Instruction: implement the logic
