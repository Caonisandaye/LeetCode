##LC 1194. Tournament Winners

#Solution
WITH Scores AS (
    SELECT player_id, sum(score) score
    FROM (
        SELECT first_player player_id, first_score score FROM Matches
        UNION ALL
        SELECT second_player player_id, second_score score FROM Matches
    ) A GROUP BY 1)

SELECT group_id, player_id 
FROM (
    SELECT group_id, A.player_id,
           RANK() OVER(PARTITION BY group_id ORDER BY score DESC, A.player_id) rk
    FROM Players A
    LEFT JOIN Scores B USING (player_id)
) A WHERE rk = 1
                
#Result Runtime: 567 ms / 99.27%; Memory Usage: 0 MB / 100.00%

#Instruction: RANK() again, implement the logic
