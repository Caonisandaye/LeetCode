##LC 512. Game Play Analysis II

#Solution
SELECT player_id, device_id FROM
(
    SELECT player_id, device_id, RANK() OVER(PARTITION BY player_id ORDER BY event_date) rk
    FROM Activity
) A
WHERE rk = 1
                
#Result Runtime: 447 ms / 98.37%; Memory Usage: 0 MB / 100.00%

#Instruction: simple RANK()
