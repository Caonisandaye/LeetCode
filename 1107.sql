##LC 1107. New Users Daily Count

#Solution
SELECT login_date, COUNT(DISTINCT user_id) user_count
FROM
(
    SELECT user_id, MIN(activity_date) login_date
    FROM Traffic
    WHERE activity = "login"
    GROUP BY 1
) A
WHERE DATEDIFF("2019-06-30", login_date) <= 90
GROUP BY 1
                
#Result Runtime: 447 ms / 72.96%; Memory Usage: 0 MB / 100.00%

#Instruction: classic GROUP BY on GROUP BYed results
