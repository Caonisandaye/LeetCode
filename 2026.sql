##LC 2026. Low-Quality Problems

#Solution
SELECT problem_id
FROM Problems
WHERE likes / (likes + dislikes) < 0.6
ORDER BY 1
                
#Result Runtime: 398 ms / 97.62%; Memory Usage: 0 MB / 100.00%

#Instruction: simply implement the logic
