##LC 613. Shortest Distance in a Line

#Solution
SELECT ABS(A.x - B.x) shortest
FROM point A
JOIN point B ON A.x <> B.x
ORDER BY 1
LIMIT 1
                
#Result Runtime: 207 ms / 88.14%; Memory Usage: 0 MB / 100.00%

#Instruction: simple math
