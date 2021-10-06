##LC 1322. Ads Performance

#Solution
SELECT ad_id, 
       ROUND(COALESCE(100*SUM(action = "Clicked")/(SUM(action = "Clicked") + SUM(action = "Viewed")), 0), 2) ctr
FROM Ads
GROUP BY 1
ORDER BY 2 DESC, 1
                
#Result Runtime: 374 ms / 90.12%; Memory Usage: 0 MB / 100.00%

#Instruction: simple GROUP BY and calculate + COALESCE
