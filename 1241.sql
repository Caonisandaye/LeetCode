##LC 1241. Number of Comments per Post

#Solution
SELECT A.sub_id post_id, COUNT(DISTINCT B.sub_id) number_of_comments
FROM Submissions A
LEFT JOIN Submissions B ON A.sub_id = B.parent_id
WHERE A.parent_id IS NULL
GROUP BY 1
                
#Result Runtime: 1055 ms / 88.08%; Memory Usage: 0 MB / 100.00%

#Instruction: be aware of which JOIN to use
