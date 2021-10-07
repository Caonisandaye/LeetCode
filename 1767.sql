##LC 1767. Find the Subtasks That Did Not Execute

#Solution
WITH RECURSIVE all_tasks AS (
    SELECT task_id, subtasks_count subtask_id FROM Tasks
    UNION
    SELECT task_id, subtask_id - 1 FROM all_tasks
    WHERE subtask_id > 1
)

SELECT A.task_id, A.subtask_id
FROM all_tasks A
LEFT JOIN Executed B USING(task_id, subtask_id)
WHERE B.subtask_id IS NULL
                
#Result Runtime: 553 ms / 89.77%; Memory Usage: 0 MB / 100.00%

#Instruction: RECURSIVE is fragrant again
