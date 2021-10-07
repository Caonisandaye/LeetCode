##LC 1661. Average Time of Process per Machine

#Solution
SELECT A.machine_id, ROUND(AVG(B.timestamp - A.timestamp), 3) processing_time
FROM Activity A
JOIN Activity B ON A.machine_id = B.machine_id AND A.process_id = B.process_id AND A.activity_type = "start" AND B.activity_type = "end"
GROUP BY 1
                
#Result Runtime: 174 ms / 94.48%; Memory Usage: 0 MB / 100.00%

#Instruction: perform the correct JOIN then bang
