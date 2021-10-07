##LC 1699. Number of Calls Between Two Persons

#Solution
SELECT person1, person2, COUNT(*) call_count, SUM(duration) total_duration
FROM(
    SELECT CASE WHEN from_id < to_id THEN from_id ELSE to_id END person1, 
           CASE WHEN from_id > to_id THEN from_id ELSE to_id END person2, duration
    FROM Calls
) A GROUP BY 1, 2
                
#Result Runtime: 524 ms / 71.40%; Memory Usage: 0 MB / 100.00%

#Instruction: smart way to avoid UNION right
