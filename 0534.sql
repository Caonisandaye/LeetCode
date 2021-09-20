##LC 534. Game Play Analysis III

#Solution
SELECT A.player_id, A.event_date, SUM(B.games_played) games_played_so_far
FROM Activity A
JOIN Activity B
ON A.player_id = B.player_id AND A.event_date >= B.event_date
GROUP BY 1, 2
                
#Result Runtime: 666 ms / 71.15%; Memory Usage: 0 MB / 100.00%

#Instruction: implement the logic, actually a variable also works here
