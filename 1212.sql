##LC 1212. Team Scores in Football Tournament

#Solution
WITH home AS (
    SELECT host_team team_id, SUM(
        (host_goals > guest_goals) * 3 + (host_goals = guest_goals)
    ) points
    FROM Matches
    GROUP BY 1
),

guest AS (
    SELECT guest_team team_id, SUM(
        (host_goals < guest_goals) * 3 + (host_goals = guest_goals)
    ) points
    FROM Matches
    GROUP BY 1
)

SELECT A.team_id, A.team_name, IFNULL(B.points, 0) + IFNULL(C.points, 0) num_points
FROM Teams A
LEFT JOIN home B USING(team_id)
LEFT JOIN guest C USING(team_id)
ORDER BY 3 DESC, 1
                
#Result Runtime: 530 ms / 97.78%; Memory Usage: 0 MB / 100.00%

#Instruction: carefull to COALESCE before introducing more NULLs
