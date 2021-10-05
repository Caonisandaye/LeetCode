##LC 608. Tree Node

#Solution
SELECT DISTINCT A.id,
    CASE WHEN A.p_id IS NULL THEN "Root"
         WHEN B.id IS NULL THEN "Leaf"
         ELSE "Inner" END AS Type
FROM tree A LEFT JOIN tree B ON B.p_id = A.id
                
#Result Runtime: 384 ms / 74.97%; Memory Usage: 0 MB / 100.00%

#Instruction: simple LEFT JOIN and CASE
