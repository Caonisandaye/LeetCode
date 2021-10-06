##LC 1097. Game Play Analysis V

#Solution
WITH Installs AS(
    SELECT player_id, MIN(event_date) install_dt
    FROM Activity GROUP BY 1
)

SELECT install_dt, COUNT(*) installs, ROUND(SUM(B.player_id IS NOT NULL) / COUNT(*), 2) Day1_retention
FROM Installs A LEFT JOIN Activity B
ON A.player_id = B.player_id AND DATEDIFF(B.event_date, A.install_dt) = 1
GROUP BY 1
                
#Result Runtime: 432 ms / 97.62%; Memory Usage: 0 MB / 100.00%

#Instruction: DATEDIFF is really powerful
