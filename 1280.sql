##LC 1280. Students and Examinations

#Solution
WITH StuSub AS (
    SELECT * FROM
    Students JOIN Subjects
)

SELECT A.*, SUM(B.student_id IS NOT NULL) attended_exams
FROM StuSub A
LEFT JOIN Examinations B
USING(student_id, subject_name)
GROUP BY 1, 2, 3
ORDER BY 1, 3
                
#Result Runtime: 774 ms / 41.14%; Memory Usage: 0 MB / 100.00%

#Instruction: use CROSS JOIN to create a checklist
