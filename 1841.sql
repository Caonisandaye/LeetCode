##LC 1841. League Statistics

#Solution
WITH Matches2 AS (
    SELECT home_team_id team_id, home_team_goals goal_for, away_team_goals goal_against
    FROM Matches
    UNION ALL
    SELECT away_team_id team_id, away_team_goals goal_for, home_team_goals goal_against
    FROM Matches
)

SELECT team_name, COUNT(*) matches_played, 
       SUM(CASE WHEN goal_for > goal_against THEN 3 WHEN goal_for < goal_against THEN 0 ELSE 1 END) points,
       SUM(goal_for) goal_for, SUM(goal_against) goal_against, SUM(goal_for) - SUM(goal_against) goal_diff
FROM Teams A
JOIN Matches2 USING(team_id)
GROUP BY A.team_id, 1
ORDER BY 3 DESC, 6 DESC, 1
                
#Result Runtime: 807 ms / 87.60%; Memory Usage: 0 MB / 100.00%

#Instruction: again use union to layout full list
