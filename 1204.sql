##LC 1204. Last Person to Fit in the Bus

#Solution
SELECT person_name FROM
(
    SELECT person_name, SUM(weight) OVER(ORDER BY turn) tw
    FROM Queue
    ORDER BY turn
) A 
WHERE tw <= 1000
ORDER BY tw DESC
LIMIT 1
                
#Result Runtime: 670 ms / 85.16%; Memory Usage: 0 MB / 100.00%

#Instruction: flexibly using window function SUM(), outperform JOIN
