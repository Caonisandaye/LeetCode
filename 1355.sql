##LC 1355. Activity Participants

#Solution
SELECT activity 
FROM (
    SELECT activity, 
           RANK() OVER(ORDER BY COUNT(*)) rk1, 
           RANK() OVER(ORDER BY COUNT(*) DESC) rk2
    FROM Friends
    GROUP BY 1
) A WHERE rk1 <> 1 AND rk2 <> 1
                
#Result Runtime: 497 ms / 95.78%; Memory Usage: 0 MB / 100.00%

#Instruction: if you GROUP BY in advance, you can perform window functions like RANK() on group function results
