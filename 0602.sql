##LC 602. Friend Requests II: Who Has the Most Friends

#Solution
SELECT id, COUNT(*) num FROM
(   SELECT requester_id id, accepter_id friend_id FROM request_accepted
    UNION
    SELECT accepter_id id, requester_id friend_id FROM request_accepted
) A
GROUP BY 1
ORDER BY 2 DESC
LIMIT 1
                
#Result Runtime: 243 ms / 59.84%; Memory Usage: 0 MB / 100.00%

#Instruction: the uniqueness is garuanteed in this case while we have to be careful if not
