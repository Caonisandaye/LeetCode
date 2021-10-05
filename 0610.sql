##LC 610. Triangle Judgement

#Solution
SELECT *,
       CASE WHEN x + y > z AND x + z > y AND y + z > x THEN "Yes"
       ELSE "No" END triangle
FROM triangle
                
#Result Runtime: 200 ms / 99.59%; Memory Usage: 0 MB / 100.00%

#Instruction: simple implement the logic, while I am too busy to check the positiveness of x, y, z
