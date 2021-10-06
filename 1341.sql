##LC 1341. Movie Rating

#Solution
# Write your MySQL query statement below
(SELECT name results FROM
    Movie_Rating A
    JOIN Users USING(user_id)
    GROUP BY A.user_id, 1
    ORDER BY COUNT(*) DESC, 1
    LIMIT 1)
UNION ALL
(SELECT title FROM
    Movie_Rating A
    JOIN movies B ON A.movie_id = B.movie_id AND SUBSTRING(A.created_at, 1, 7) = "2020-02"
    GROUP BY A.movie_id, 1
    ORDER BY AVG(rating) DESC, 1
    LIMIT 1)
                
#Result Runtime: 717 ms / 99.80%; Memory Usage: 0 MB / 100.00%

#Instruction: note that we must use INNER JOIN especially for the secone sub-query
