##LC 1285. Find the Start and End Number of Continuous

#Solution
SELECT a.log_id as start_id, MIN(b.log_id) as end_id
FROM
(SELECT * from logs WHERE log_id-1 not in (SELECT * FROM logs)) a,
(SELECT * from logs WHERE log_id+1 not in (SELECT * FROM logs)) b
WHERE b.log_id >= a.log_id
GROUP BY 1
                
#Result Runtime: 352 ms / 54.71%; Memory Usage: 0 MB / 100.00%

#Instruction: LEFT/RIGHT JOIN also gives starts and ends
