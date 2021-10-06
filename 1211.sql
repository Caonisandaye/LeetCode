##LC 1211. Queries Quality and Percentage

#Solution
SELECT query_name, 
       ROUND(AVG(rating / position), 2) quality,
       ROUND(SUM(rating < 3) / COUNT(*) * 100, 2) poor_query_percentage
FROM Queries
GROUP BY 1
                
#Result Runtime: 504 ms / 99.13%; Memory Usage: 0 MB / 100.00%

#Instruction: simply implement the logic
