##LC 614. Second Degree Follower

#Solution
SELECT A.follower, COUNT(DISTINCT B.follower) num
FROM follow A
JOIN follow B ON A.follower = B.followee
GROUP BY 1
                
#Result Runtime: 524 ms / 51.00%; Memory Usage: 0 MB / 100.00%

#Instruction: dont forget DISTINCT, simple logic
