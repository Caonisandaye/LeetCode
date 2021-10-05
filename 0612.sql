##LC 612. Shortest Distance in a Plane

#Solution
SELECT ROUND(POW(POW(A.x-B.x, 2) + POW(A.y-B.y, 2), 0.5), 2) shortest
FROM point_2d A
JOIN point_2d B
ON A.x <> B.x OR A.y <> B.y
ORDER BY 1
LIMIT 1
                
#Result Runtime: 195 ms / 83.52%; Memory Usage: 0 MB / 100.00%

#Instruction: use MIN() might improve the performance better
