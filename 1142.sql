##LC 1142. User Activity for the Past 30 Days II

#Solution
SELECT ROUND(COALESCE(AVG(sessions), 0), 2) average_sessions_per_user FROM
(
    SELECT user_id, COUNT(DISTINCT session_id) sessions
    FROM Activity
    WHERE DATEDIFF("2019-07-27", activity_date) < 30
    GROUP BY 1
) A
                
#Result Runtime: 393 ms / 72.33%; Memory Usage: 0 MB / 100.00%

#Instruction: calculate twice with grouping functions
