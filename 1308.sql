##LC 1308. Running Total for Different Genders

#Solution
SELECT gender, day, SUM(score_points) OVER (PARTITION BY gender ORDER BY day) as total
FROM scores
ORDER BY 1,2
                
#Result Runtime: 492 ms / 97.16%; Memory Usage: 0 MB / 100.00%

#Instruction: simple window function SUM()
