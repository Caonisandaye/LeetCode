##LC 1988. Find Cutoff Score for Each School

#Solution
SELECT A.school_id, COALESCE(score, -1) score
FROM Schools A LEFT JOIN
(
    SELECT school_id, score, RANK() OVER(PARTITION BY school_id ORDER BY score) rk
    FROM Schools A
    JOIN Exam B
    ON A.capacity >= B.student_count
) B USING(school_id)
WHERE rk = 1 OR rk IS NULL
                
#Result Runtime: 612 ms / 48.40%; Memory Usage: 0 MB / 100.00%

#Instruction: use original table to do one more left join to keep all schools
