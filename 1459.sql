##LC 1459. Rectangles Area

#Solution
SELECT A.id p1, B.id p2, ABS(A.x_value-B.x_value)*ABS(A.y_value-B.y_value) area
FROM Points A
JOIN Points B ON A.id < B.id
HAVING area > 0
ORDER BY 3 DESC, 1, 2
                
#Result Runtime: 266 ms / 90.91%; Memory Usage: 0 MB / 100.00%

#Instruction: simply implement the logic
