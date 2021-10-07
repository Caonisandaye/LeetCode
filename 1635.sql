##LC 1635. Hopper Company Queries I

#Solution
WITH RECURSIVE months AS (
    SELECT 1 month
    UNION
    SELECT month + 1 FROM months WHERE month < 12
)

SELECT month, active_drivers, SUM(C.ride_id IS NOT NULL) accepted_rides
FROM (
    SELECT month, SUM(B.driver_id IS NOT NULL) active_drivers
    FROM months A
    LEFT JOIN Drivers B
    ON YEAR(B.join_date) < 2020 OR YEAR(B.join_date) = 2020 AND MONTH(B.join_date) <= month
    GROUP BY 1
) A LEFT JOIN Rides B ON A.month = MONTH(B.requested_at) AND YEAR(B.requested_at) = 2020
    LEFT JOIN AcceptedRides C ON B.ride_id = C.ride_id
GROUP BY 1, 2
                
#Result Runtime: 1153 ms / 91.08%; Memory Usage: 0 MB / 100.00%

#Instruction: use RECURSIVE to create month checklist, and be very careful to introduce duplicates while JOIN
