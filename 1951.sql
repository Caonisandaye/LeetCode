##LC 1951. All the Pairs With the Maximum Number of Common Followers

#Solution
WITH Count_common_followers AS(
    SELECT A.user_id user1_id, B.user_id user2_id, COUNT(*) cnt
    FROM Relations A
    JOIN Relations B
    ON A.user_id < B.user_id AND A.follower_id = B.follower_id
    GROUP BY 1, 2
)

SELECT user1_id, user2_id
FROM Count_common_followers
WHERE cnt in 
    (SELECT MAX(cnt) FROM Count_common_followers)
                
#Result Runtime: 454 ms / 95.19%; Memory Usage: 0 MB / 100.00%

#Instruction: using temp table will have one less subquery than using RANK()
