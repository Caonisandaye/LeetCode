##LC 1811. Find Interview Candidates

#Solution
WITH medals AS (
    SELECT contest_id, gold_medal user_id FROM Contests
    UNION
    SELECT contest_id, silver_medal user_id FROM Contests
    UNION
    SELECT contest_id, bronze_medal user_id FROM Contests
)

SELECT name, mail
FROM (
    SELECT gold_medal user_id
    FROM Contests A
    GROUP BY 1
    HAVING COUNT(*) >= 3
    UNION
    SELECT A.user_id
    FROM medals A
    JOIN medals B ON A.user_id = B.user_id AND A.contest_id = B.contest_id + 1
    JOIN medals C ON A.user_id = C.user_id AND A.contest_id = C.contest_id + 2
) A LEFT JOIN Users B USING(user_id)
                
#Result Runtime: 855 ms / 97.72%; Memory Usage: 0 MB / 100.00%

#Instruction: a checklist of medalist helps in this case
