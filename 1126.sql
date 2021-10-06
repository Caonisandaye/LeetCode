##LC 1126. Active Businesses

#Solution
SELECT business_id FROM 
(
    SELECT *, AVG(occurences) OVER(PARTITION BY event_type) avg_occ
    FROM Events
) A
GROUP BY 1
HAVING SUM(occurences > avg_occ) >= 2
                
#Result Runtime: 736 ms / 75.48%; Memory Usage: 0 MB / 100.00%

#Instruction: use window function AVG() to implement the logic
