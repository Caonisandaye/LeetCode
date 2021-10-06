##LC 1149. Article Views II

#Solution
SELECT DISTINCT viewer_id id
FROM Views
GROUP BY 1, view_date
HAVING COUNT(DISTINCT article_id) >= 2
ORDER BY 1
                
#Result Runtime: 366 ms / 81.03%; Memory Usage: 0 MB / 100.00%

#Instruction: simple grouping, note that GROUP features dont need to be SELECTed 
