##LC 620. Not Boring Movies

#Solution
SELECT *
FROM Cinema
WHERE id % 2 = 1 AND description <> "boring"
ORDER BY 4 DESC
                
#Result Runtime: 168 ms / 92.32%; Memory Usage: 0 MB / 100.00%

#Instruction: simple filtering
