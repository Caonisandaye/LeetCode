##LC 1645. Hopper Company Queries II

#Solution
WITH RECURSIVE months AS (
    SELECT 1 month
    UNION
    SELECT month + 1 FROM months WHERE month < 12
)

SELECT month, ROUND(100*IFNULL(COUNT(DISTINCT driver_id)/active_drivers, 0), 2) working_percentage
FROM (
    SELECT month, SUM(B.driver_id IS NOT NULL) active_drivers
    FROM months A
    LEFT JOIN Drivers B
    ON YEAR(B.join_date) < 2020 OR YEAR(B.join_date) = 2020 AND MONTH(B.join_date) <= month
    GROUP BY 1
) A LEFT JOIN Rides B ON A.month = MONTH(B.requested_at) AND YEAR(B.requested_at) = 2020
    LEFT JOIN AcceptedRides C ON B.ride_id = C.ride_id
GROUP BY 1
                
#Result Runtime: 1228 ms / 81.62%; Memory Usage: 0 MB / 100.00%

#Instruction: be very aware that which step introduces duplicates
