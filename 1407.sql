##LC 1407. Top Travellers

#Solution
SELECT name, COALESCE(SUM(distance), 0) travelled_distance
FROM Users A
LEFT JOIN Rides B
ON A.id = B.user_id
GROUP BY A.id, 1
ORDER BY 2 DESC, 1
                
#Result Runtime: 577 ms / 93.44%; Memory Usage: 0 MB / 100.00%

#Instruction: simple group function witl COALESCE
