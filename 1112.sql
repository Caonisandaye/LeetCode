##LC 1112. Highest Grade For Each Student

#Solution
SELECT student_id, course_id, grade FROM
(
    SELECT student_id, course_id, grade,
       RANK() OVER(PARTITION BY student_id ORDER BY grade DESC, course_id) rk
    FROM Enrollments
) A WHERE rk = 1
                
#Result Runtime: 470 ms / 75.94%; Memory Usage: 0 MB / 100.00%

#Instruction: another RANK()
