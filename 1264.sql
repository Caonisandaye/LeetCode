##LC 1264. Page Recommendations

#Solution
SELECT DISTINCT page_id recommended_page
FROM Friendship A
JOIN Likes B ON (A.user2_id = B.user_id AND A.user1_id = 1) OR (A.user1_id = B.user_id AND A.user2_id = 1)
WHERE page_id NOT IN (SELECT page_id FROM Likes WHERE user_id = 1)
                
#Result Runtime: 390 ms / 96.79%; Memory Usage: 0 MB / 100.00%

#Instruction: sick of these two-sided questions
