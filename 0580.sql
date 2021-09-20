##LC 580. Count Student Number in Departments

#Solution
SELECT A.dept_name, SUM(B.dept_id IS NOT NULL) student_number
FROM department A
LEFT JOIN student B USING(dept_id)
GROUP BY A.dept_id, 1
ORDER BY 2 DESC, 1

#Result Runtime: 637 ms / 77.86%; Memory Usage: 0 MB / 100.00%

#Instruction: simple GROUP BY
