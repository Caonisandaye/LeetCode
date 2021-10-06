##LC 1412. Find the Quiet Students in All Exams

#Solution
WITH ranked AS (
    SELECT exam_id, student_id,
           RANK() OVER(PARTITION BY exam_id ORDER BY score) rk1,
           RANK() OVER(PARTITION BY exam_id ORDER BY score DESC) rk2
    FROM Exam
)

SELECT * FROM Student
WHERE student_id IN 
    (SELECT student_id FROM ranked)
    AND student_id NOT IN 
    (SELECT student_id FROM ranked WHERE rk1 = 1 OR rk2 = 1)
                
#Result Runtime: 486 ms / 51.08%; Memory Usage: 0 MB / 100.00%

#Instruction: use COUNT(*) = SUM(...) instead to avoid too many sub-queries
