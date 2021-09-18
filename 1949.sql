##LC 1949. Strong Friendship

#Solution
SELECT user1_id, user2_id, COUNT(*) common_friend FROM 
(
    SELECT A.user1_id user1_id, B.user1_id user2_id FROM Friendship A JOIN Friendship B ON A.user2_id = B.user2_id AND A.user1_id < B.user1_id
    UNION ALL
    SELECT A.user1_id, B.user2_id FROM Friendship A JOIN Friendship B ON A.user2_id = B.user1_id
    UNION ALL
    SELECT A.user2_id, B.user2_id FROM Friendship A JOIN Friendship B ON A.user1_id = B.user1_id AND A.user2_id < B.user2_id
) A 
JOIN Friendship USING(user1_id, user2_id)
GROUP BY 1, 2
HAVING common_friend >= 3

#Result Runtime: 390 ms / 50.00%; Memory Usage: 0 MB / 100%

#Instruction: remember the output pair should be friends too so need to join the original table at last
