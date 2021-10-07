##LC 1809. Ad-Free Sessions

#Solution
SELECT session_id
FROM Playback A
LEFT JOIN Ads B
ON A.customer_id = B.customer_id AND timestamp BETWEEN start_time AND end_time
WHERE B.ad_id IS NULL
                
#Result Runtime: 632 ms / 98.38%; Memory Usage: 0 MB / 100.00%

#Instruction: simple LEFT JOIN and BETWEEN
