##LC 1651. Hopper Company Queries III

#Solution
WITH RECURSIVE months AS (
    SELECT 1 month
    UNION
    SELECT month + 1 FROM months WHERE month < 10
)

SELECT month,
       ROUND(SUM(IFNULL(C.ride_distance, 0))/3, 2) average_ride_distance,
       ROUND(SUM(IFNULL(C.ride_duration, 0))/3, 2) average_ride_duration
FROM months A
LEFT JOIN Rides B ON YEAR(requested_at) = 2020
                  AND MONTH(requested_at) - month BETWEEN 0 AND 2
LEFT JOIN AcceptedRides C ON B.ride_id = C.ride_id
GROUP BY 1
                
#Result Runtime: 1118 ms / 95.15%; Memory Usage: 0 MB / 100.00%

#Instruction: RECURSIVE and JOIN on the correct condition
