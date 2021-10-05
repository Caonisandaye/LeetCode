##LC 597. Friend Requests I: Overall Acceptance Rate

#Solution
SELECT ROUND(
    COALESCE(
    (SELECT COUNT(DISTINCT requester_id, accepter_id) FROM RequestAccepted)
    /
    (SELECT COUNT(DISTINCT sender_id, send_to_id) FROM FriendRequest)
    , 0)
, 2) accept_rate
                
#Result Runtime: 429 ms / 65.67%; Memory Usage: 0 MB / 100.00%

#Instruction: remember to COALESCE NULLs and use DISTINCT to elude duplicates
