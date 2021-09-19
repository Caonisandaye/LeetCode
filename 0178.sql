##LC 178. Rank Scores

#Solution
SELECT Score, DENSE_RANK() OVER(ORDER BY score DESC) "Rank"
FROM Scores
ORDER BY 2
                
#Result Runtime: 229 ms / 85.23%; Memory Usage: 0 MB / 100.00%

#Instruction: double quote column name if it's pre-used as built-in functions like RANK()
