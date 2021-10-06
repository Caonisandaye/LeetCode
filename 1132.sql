##LC 1132. Reported Posts II

#Solution
SELECT ROUND(AVG(rem_perc) * 100, 2) average_daily_percent FROM
(SELECT A.action_date, SUM(B.post_id IS NOT NULL)/COUNT(*) rem_perc
FROM (
    SELECT DISTINCT post_id, action_date
    FROM Actions
    WHERE action = "report" AND extra = "spam"
) A LEFT JOIN Removals B 
ON A.post_id = B.post_id AND A.action_date < B.remove_date
GROUP BY 1 ) A
                
#Result Runtime: 809 ms / 76.22%; Memory Usage: 0 MB / 100.00%

#Instruction: be careful with duplicates, that's why we filter DISTINCT before joining
